import 'character_model.dart';

abstract class CharacterListRepository {
  Future<List<CharacterModel>> getCharacters();
}
