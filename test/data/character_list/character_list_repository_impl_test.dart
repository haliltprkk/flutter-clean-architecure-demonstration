import 'package:clean_architecture_demonstration/data/character_list/repository/character_list_repository_impl.dart';
import 'package:clean_architecture_demonstration/domain/character_list/character_list_repository.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import '../../mock_data.dart';
import '../../mocks.mocks.dart';

late MockCharacterListApiService _characterListApiService;

main() {
  CharacterListRepository _build() => CharacterListRepositoryImpl(_characterListApiService);
  setUp(() => _characterListApiService = MockCharacterListApiService());

  test(
      'when getCharacterList() called on A CharacterListRepository'
      'getCharacterList() called on CharacterListApiService', () async {
    when(_characterListApiService.getCharacters())
        .thenAnswer((realInvocation) => Future.value(getMockCharacterListDto()));
    await _build().getCharacters();
    verify(_characterListApiService.getCharacters());
  });
}
