import 'package:clean_architecture_demonstration/presentation/utils/custom_colors.dart';
import 'package:clean_architecture_demonstration/presentation/utils/dimens.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  final String title;
  final VoidCallback? onBackClicked;

  const CustomAppBar({required this.title, this.onBackClicked, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: Dimens.horizontalOffset),
      height: Dimens.appBarHeight,
      color: Colors.white,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Visibility(
            visible: onBackClicked != null,
            child: Container(
              margin: EdgeInsetsDirectional.only(end: 12),
              child: InkWell(
                onTap: onBackClicked,
                child: Icon(
                  Icons.arrow_back,
                  color: CustomColors.shark,
                ),
              ),
            ),
          ),
          Text(
            title,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20, color: CustomColors.shark),
          ),
        ],
      ),
    );
  }
}
