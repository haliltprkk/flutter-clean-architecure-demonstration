import 'package:clean_architecture_demonstration/config/di/di.dart';
import 'package:clean_architecture_demonstration/presentation/character_list/character_list_bloc.dart';
import 'package:clean_architecture_demonstration/presentation/common_widgets/empty_body.dart';
import 'package:clean_architecture_demonstration/presentation/common_widgets/loading_body.dart';
import 'package:clean_architecture_demonstration/presentation/utils/bloc_common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'components/character_list_item.dart';
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

  _buildSuccessBody(BuildContext context, CharacterListState state) {
    return Expanded(
        child: RefreshIndicator(
      onRefresh: () => context.read<CharacterListBloc>().refreshList(),
      child: ListView.separated(
        padding: EdgeInsets.symmetric(vertical: 12),
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        itemCount: state.characterList.length,
        physics: BouncingScrollPhysics(),
        itemBuilder: (context, index) {
          return CharacterListItem(state.characterList[index]);
        },
        separatorBuilder: (BuildContext context, int index) {
          return SizedBox(
            height: 12,
          );
        },
      ),
    ));
  }
}

_buildInitialBody() {
  return Expanded(
      child: Center(
    child: Image.asset(
      "assets/ic_rick.png",
      width: 120,
      height: 120,
    ),
  ));
}
