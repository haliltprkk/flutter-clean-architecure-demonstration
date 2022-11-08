import 'package:bloc_test/bloc_test.dart';
import 'package:clean_architecture_demonstration/presentation/character_list/character_list_bloc.dart';
import 'package:clean_architecture_demonstration/presentation/utils/bloc_common.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import '../../mocks.mocks.dart';

late MockCharacterListRepository _characterListRepository;

void main() {
  const initialState = CharacterListState(stateType: StateType.initial, characterList: []);

  CharacterListBloc _build() => CharacterListBloc(_characterListRepository);

  setUp(() => _characterListRepository = MockCharacterListRepository());

  test('bloc should have initial state as [StateType.initial]', () {
    final bloc = _build();
    expect(bloc.state.stateType, StateType.initial);
  });
}
