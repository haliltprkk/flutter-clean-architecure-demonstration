import 'package:clean_architecture_demonstration/domain/character_list/character_model.dart';
import 'package:clean_architecture_demonstration/presentation/utils/bloc_common.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/character_detail/character_detail_repository.dart';

part 'character_detail_bloc.freezed.dart';

@freezed
class CharacterDetailState with _$CharacterDetailState {
  const factory CharacterDetailState({
    required CharacterModel? character,
    required StateType stateType,
  }) = _CharacterDetailState;
}

class CharacterDetailBloc extends Cubit<CharacterDetailState> {
  CharacterDetailRepository _characterDetailRepository;
  late final characterId;
  late final characterTitle;

  CharacterDetailBloc(this._characterDetailRepository)
      : super(const CharacterDetailState(character: null, stateType: StateType.initial));

  Future<void> init(int id, String title) async {
    characterId = id;
    characterTitle = title;
    await getCharacterDetail();
  }

  String getCharacterTitle() => characterTitle;

  Future<void> getCharacterDetail() async {
    emit(state.copyWith(stateType: StateType.loading));
    try {
      final response = await _characterDetailRepository.getCharacterById(characterId);
      emit(state.copyWith(stateType: StateType.success, character: response));
    } catch (e) {
      emit(state.copyWith(stateType: StateType.error));
    }
  }
}
