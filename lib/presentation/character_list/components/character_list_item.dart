import 'package:clean_architecture_demonstration/domain/character_list/character_model.dart';
import 'package:clean_architecture_demonstration/presentation/utils/app_navigator.dart';
import 'package:clean_architecture_demonstration/presentation/utils/custom_colors.dart';
import 'package:flutter/material.dart';

import '../../../config/di/di.dart';
import '../../utils/dimens.dart';

class CharacterListItem extends StatelessWidget {
  final CharacterModel characterModel;

  CharacterListItem(this.characterModel, {Key? key}) : super(key: key);
  final navigator = inject<AppNavigator>();

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => navigator.pushNamed(context,
          route: AppNavigator.characterDetailPath, data: [characterModel.id, characterModel.name]),
      child: Container(
        decoration:
            BoxDecoration(color: CustomColors.tuna, borderRadius: BorderRadius.circular(10)),
        height: 150,
        margin: EdgeInsets.symmetric(horizontal: Dimens.horizontalOffset),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadiusDirectional.only(
                  topStart: Radius.circular(10), bottomStart: Radius.circular(10)),
              child: Image.network(
                characterModel.image,
                fit: BoxFit.cover,
                width: 150,
                height: 150,
              ),
            ),
            SizedBox(
              width: 12,
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(top: 10, bottom: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      characterModel.name,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style:
                          TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.w700),
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Row(
                      children: [
                        Container(
                          width: 8,
                          height: 8,
                          decoration: BoxDecoration(
                              color: characterModel.getStatusColor(),
                              borderRadius: BorderRadius.circular(4)),
                        ),
                        SizedBox(
                          width: 6,
                        ),
                        Text(
                          characterModel.getStatusAndSpecies(),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              color: Colors.white, fontSize: 12, fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Text(
                      "Last known location:",
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                          color: CustomColors.silverChalice,
                          fontSize: 12,
                          fontWeight: FontWeight.w400),
                    ),
                    Text(
                      characterModel.location,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style:
                          TextStyle(color: Colors.white, fontSize: 14, fontWeight: FontWeight.w400),
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Text(
                      "First seen in:",
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                          color: CustomColors.silverChalice,
                          fontSize: 12,
                          fontWeight: FontWeight.w400),
                    ),
                    Text(
                      characterModel.origin,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style:
                          TextStyle(color: Colors.white, fontSize: 14, fontWeight: FontWeight.w400),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
