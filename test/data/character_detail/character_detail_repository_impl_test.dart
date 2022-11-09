import 'package:clean_architecture_demonstration/data/character_detail/repository/character_detail_repository_impl.dart';
import 'package:clean_architecture_demonstration/domain/character_detail/character_detail_repository.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import '../../mock_data.dart';
import '../../mocks.mocks.dart';

late MockCharacterDetailApiService _characterDetailApiService;

main() {
  const ID = 12;
  CharacterDetailRepository _build() => CharacterDetailRepositoryImpl(_characterDetailApiService);

  setUp(() => _characterDetailApiService = MockCharacterDetailApiService());

  test(
      'when getCharacterDetail(id) method is called on CharacterDetailRepository '
      'getCharacterDetail(id) method is called on CharacterDetailApiService with correct data',
      () async {
    when(_characterDetailApiService.getCharacter(any))
        .thenAnswer((_) => Future.value(getMockCharacterDto()));
    await _build().getCharacterById(ID);
    expect(verify(_characterDetailApiService.getCharacter(captureAny)).captured.single, ID);
  });
}
