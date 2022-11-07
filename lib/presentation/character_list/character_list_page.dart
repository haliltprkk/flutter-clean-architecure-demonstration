import 'package:clean_architecture_demonstration/config/di/di.dart';
import 'package:clean_architecture_demonstration/presentation/character_list/character_list_bloc.dart';
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
          return _buildLoadingBody();
        case StateType.loaded:
          return _buildLoadedBody(context, state);
        case StateType.error:
          return _buildErrorBody();
      }
    });
  }

  _buildErrorBody() {
    return const Expanded(
        child: Center(
      child: Text(
        "An error occurred",
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
        style: TextStyle(color: Colors.white, fontSize: 12, fontWeight: FontWeight.w400),
      ),
    ));
  }

  _buildLoadedBody(context, CharacterListState state) {
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

  _buildLoadingBody() {
    return const Expanded(
        child: Center(
      child: CircularProgressIndicator(
        color: Colors.white,
      ),
    ));
  }
}

_buildInitialBody() {
  return SizedBox();
}
