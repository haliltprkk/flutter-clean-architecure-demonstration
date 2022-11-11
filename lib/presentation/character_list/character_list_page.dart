import 'package:clean_architecture_demonstration/config/di/di.dart';
import 'package:clean_architecture_demonstration/presentation/character_list/character_list_bloc.dart';
import 'package:clean_architecture_demonstration/presentation/character_list/components/characterList_success_body.dart';
import 'package:clean_architecture_demonstration/presentation/character_list/components/character_list_initial_body.dart';
import 'package:clean_architecture_demonstration/presentation/common_widgets/empty_body.dart';
import 'package:clean_architecture_demonstration/presentation/common_widgets/loading_body.dart';
import 'package:clean_architecture_demonstration/presentation/utils/bloc_common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../common_widgets/custom_app_bar.dart';

class CharacterListPage extends StatelessWidget {
  CharacterListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildUi(),
    );
  }

  _buildUi() {
    return BlocProvider(
        create: (BuildContext context) => inject<CharacterListBloc>()..getCharacters(),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [CustomAppBar(title: "Character List"), _buildBody()],
          ),
        ));
  }

  _buildBody() {
    return BlocBuilder<CharacterListBloc, CharacterListState>(
        builder: (BuildContext context, CharacterListState state) {
      ScaffoldMessenger.of(context).clearSnackBars();
      switch (state.stateType) {
        case StateType.initial:
          return CharacterListInitialBody();
        case StateType.loading:
          return LoadingBody();
        case StateType.success:
          return CharacterListSuccessBody();
        case StateType.error:
          return EmptyBody(state.message);
      }
    });
  }
}
