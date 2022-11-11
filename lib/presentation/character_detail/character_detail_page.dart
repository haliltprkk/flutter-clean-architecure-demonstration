import 'package:clean_architecture_demonstration/presentation/character_detail/components/character_detail_success_body.dart';
import 'package:clean_architecture_demonstration/presentation/utils/custom_colors.dart';
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
          return SizedBox();
        case StateType.loading:
          return LoadingBody();
        case StateType.success:
          return CharacterDetailSuccessBody();
        case StateType.error:
          return EmptyBody(state.message);
      }
    });
  }
}
