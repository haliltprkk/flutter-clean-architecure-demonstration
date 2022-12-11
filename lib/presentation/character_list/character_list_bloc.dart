import 'package:clean_architecture_demonstration/domain/character_list/character_list_repository.dart';
import 'package:clean_architecture_demonstration/presentation/utils/error_handler.dart';
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
    @Default("") String message,
  }) = _CharacterListState;
}

class CharacterListBloc extends Cubit<CharacterListState> {
  final CharacterListRepository _characterListRepository;

  CharacterListBloc(this._characterListRepository)
      : super(const CharacterListState(characterList: [], stateType: StateType.initial));

  Future<void> getCharacters() async {
    emit(state.copyWith(stateType: StateType.loading));
    try {
      final characterList = await _characterListRepository.getCharacters();
      emit(state.copyWith(stateType: StateType.success, characterList: characterList));
    } on Exception catch (e) {
      emit(state.copyWith(stateType: StateType.error, message: e.handleError()));
    }
  }

  Future<void> refreshList() async {
    emit(state.copyWith(stateType: StateType.initial, characterList: []));
    await getCharacters();
  }
}
