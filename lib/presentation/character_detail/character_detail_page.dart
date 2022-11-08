import 'package:clean_architecture_demonstration/presentation/utils/custom_colors.dart';
import 'package:clean_architecture_demonstration/presentation/utils/dimens.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../common_widgets/custom_app_bar.dart';
import '../common_widgets/empty_body.dart';
import '../common_widgets/loading_body.dart';
import '../utils/bloc_common.dart';
import 'character_detail_bloc.dart';

class CharacterDetailPage extends StatelessWidget {
  const CharacterDetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.tuna,
      body: _buildUi(context),
    );
  }

  _buildUi(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          CustomAppBar(
            title: context.read<CharacterDetailBloc>().getCharacterTitle(),
            onBackClicked: () {
              Navigator.pop(context);
            },
          ),
          _buildBody()
        ],
      ),
    );
  }

  _buildBody() {
    return BlocBuilder<CharacterDetailBloc, CharacterDetailState>(
        builder: (BuildContext context, CharacterDetailState state) {
      ScaffoldMessenger.of(context).clearSnackBars();
      switch (state.stateType) {
        case StateType.initial:
          return _buildInitialBody();
        case StateType.loading:
          return LoadingBody();
        case StateType.success:
          return _buildSuccessBody(context, state);
        case StateType.error:
          return EmptyBody(state.message);
      }
    });
  }

  _buildInitialBody() {
    return SizedBox();
  }

  _buildSuccessBody(BuildContext context, CharacterDetailState state) {
    final characterModel = state.character;
    if (characterModel == null) {
      return EmptyBody("Character couldn't showed");
    }
    return Expanded(
      child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Image.network(
                  characterModel.image,
                  fit: BoxFit.cover,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: Dimens.verticalOffset, horizontal: Dimens.horizontalOffset),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(
                        characterModel.name,
                        style: TextStyle(
                            color: Colors.white, fontSize: 32, fontWeight: FontWeight.w700),
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      Row(
                        children: [
                          Container(
                            width: 10,
                            height: 10,
                            decoration: BoxDecoration(
                                color: characterModel.getStatusColor(),
                                borderRadius: BorderRadius.circular(5)),
                          ),
                          SizedBox(
                            width: 6,
                          ),
                          Text(
                            characterModel.getStatusAndSpecies(),
                            style: TextStyle(
                                color: Colors.white, fontSize: 16, fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Text(
                        "Last known location:",
                        style: TextStyle(
                            color: CustomColors.silverChalice,
                            fontSize: 16,
                            fontWeight: FontWeight.w400),
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      Text(
                        characterModel.location,
                        style: TextStyle(
                            color: Colors.white, fontSize: 18, fontWeight: FontWeight.w400),
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Text(
                        "First seen in:",
                        style: TextStyle(
                            color: CustomColors.silverChalice,
                            fontSize: 16,
                            fontWeight: FontWeight.w400),
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      Text(
                        characterModel.origin,
                        style: TextStyle(
                            color: Colors.white, fontSize: 18, fontWeight: FontWeight.w400),
                      )
                    ],
                  ),
                )
              ],
            ),
          )),
    );
  }
}
