import 'package:clean_architecture_demonstration/domain/character_list/character_list_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/character_list/character_model.dart';
import '../utils/bloc_common.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'character_list_bloc.freezed.dart';

@freezed
class CharacterListState with _$CharacterListState {
  const factory CharacterListState({
    required List<CharacterModel> characterList,
    required StateType stateType,
  }) = _CharacterListState;
}

class CharacterListBloc extends Cubit<CharacterListState> {
  final CharacterListRepository _repoCharacterList;

  CharacterListBloc(this._repoCharacterList)
      : super(const CharacterListState(characterList: [], stateType: StateType.initial));

  Future<void> getCharacters() async {
    emit(state.copyWith(
      stateType: StateType.loading,
    ));
    try {
      final characterList = await _repoCharacterList.getCharacters();
      emit(state.copyWith(stateType: StateType.success, characterList: characterList));
    } catch (e) {
      emit(state.copyWith(stateType: StateType.error));
    }
  }

  Future<void> refreshList() async {
    emit(state.copyWith(stateType: StateType.initial, characterList: []));
    await getCharacters();
  }
}
