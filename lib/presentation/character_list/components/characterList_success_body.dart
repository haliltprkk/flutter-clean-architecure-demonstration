import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../character_list_bloc.dart';
import 'character_list_item.dart';

class CharacterListSuccessBody extends StatelessWidget {
  const CharacterListSuccessBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: RefreshIndicator(
      onRefresh: () => context.read<CharacterListBloc>().refreshList(),
      child: ListView.separated(
        padding: EdgeInsets.symmetric(vertical: 12),
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        itemCount: context.read<CharacterListBloc>().state.characterList.length,
        physics: BouncingScrollPhysics(),
        itemBuilder: (context, index) {
          var list = context.read<CharacterListBloc>().state.characterList;
          return CharacterListItem(list[index]);
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
