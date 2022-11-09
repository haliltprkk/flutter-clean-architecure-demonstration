import 'package:bloc_test/bloc_test.dart';
import 'package:clean_architecture_demonstration/presentation/character_list/character_list_bloc.dart';
import 'package:clean_architecture_demonstration/presentation/utils/bloc_common.dart';
import 'package:clean_architecture_demonstration/presentation/utils/error_handler.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import '../../mocks.mocks.dart';

late MockCharacterListRepository _characterListRepository;
final simpleException = Exception("");

void main() {
  const initialState = CharacterListState(stateType: StateType.initial, characterList: []);
  CharacterListBloc _build() => CharacterListBloc(_characterListRepository);

  setUp(() {
    _characterListRepository = MockCharacterListRepository();
  });

  test('bloc should have initial state as [StateType.initial]', () {
    final bloc = _build();
    expect(bloc.state.stateType, StateType.initial);
  });

  blocTest<CharacterListBloc, CharacterListState>(
      'when getCharacters() called and returned error'
      'state loading is emitted and  state error is emitted',
      build: _build,
      act: (bloc) async {
        when(_characterListRepository.getCharacters())
            .thenAnswer((_) => Future.error(simpleException));
        await bloc.getCharacters();
      },
      expect: () => [
            initialState.copyWith(stateType: StateType.loading),
            initialState.copyWith(
                stateType: StateType.error, message: simpleException.handleError())
          ]);

  blocTest<CharacterListBloc, CharacterListState>(
      'when getCharacters() called and returned success'
      'state loading is emitted and  state success is emitted',
      build: _build,
      act: (bloc) async {
        when(_characterListRepository.getCharacters()).thenAnswer((_) => Future.value([]));
        await bloc.getCharacters();
      },
      expect: () => [
            initialState.copyWith(stateType: StateType.loading),
            initialState.copyWith(stateType: StateType.success)
          ]);
}
