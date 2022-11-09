import 'package:bloc_test/bloc_test.dart';
import 'package:clean_architecture_demonstration/presentation/character_detail/character_detail_bloc.dart';
import 'package:clean_architecture_demonstration/presentation/utils/bloc_common.dart';
import 'package:clean_architecture_demonstration/presentation/utils/error_handler.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import '../../mock_data.dart';
import '../../mocks.mocks.dart';

late MockCharacterDetailRepository _characterDetailRepository;

main() {
  const initialState = CharacterDetailState(stateType: StateType.initial, character: null);
  const ID = 1;
  const TITLE = "Rick";
  final simpleException = Exception("");
  CharacterDetailBloc _build() => CharacterDetailBloc(_characterDetailRepository);

  setUp(() {
    _characterDetailRepository = MockCharacterDetailRepository();
  });

  test('bloc should have initial state as [StateType.initial]', () {
    final bloc = _build();
    expect(bloc.state.stateType, StateType.initial);
  });

  test(
      'when init() method called '
      'getCharacterDetail() method called on _characterDetailRepository with given id', () {
    final bloc = _build();
    when(_characterDetailRepository.getCharacterById(ID))
        .thenAnswer((_) => Future.value(getMockCharacterModel()));
    bloc.init(ID, TITLE);
    expect(verify(_characterDetailRepository.getCharacterById(captureAny)).captured.single, ID);
  });

  test(
      'when getCharacterTitle() called '
      'returns given title by init()', () {
    final bloc = _build();
    when(_characterDetailRepository.getCharacterById(ID))
        .thenAnswer((_) => Future.value(getMockCharacterModel()));
    bloc.init(ID, TITLE);
    expect(bloc.getCharacterTitle(), TITLE);
  });

  blocTest<CharacterDetailBloc, CharacterDetailState>(
    'when _characterDetailRepository returns error '
    'state error is emitted',
    build: () => _build(),
    act: (bloc) {
      when(_characterDetailRepository.getCharacterById(ID))
          .thenAnswer((_) => Future.error(simpleException));
      bloc.init(ID, TITLE);
    },
    expect: () => <CharacterDetailState>[
      initialState.copyWith(stateType: StateType.loading),
      initialState.copyWith(stateType: StateType.error, message: simpleException.handleError())
    ],
  );

  blocTest<CharacterDetailBloc, CharacterDetailState>(
    'when _characterDetailRepository returns success '
    'state success is emitted',
    build: () => _build(),
    act: (bloc) {
      when(_characterDetailRepository.getCharacterById(ID))
          .thenAnswer((_) => Future.value(getMockCharacterModel()));
      bloc.init(ID, TITLE);
    },
    expect: () => <CharacterDetailState>[
      initialState.copyWith(stateType: StateType.loading),
      initialState.copyWith(stateType: StateType.success, character: getMockCharacterModel())
    ],
  );
}
