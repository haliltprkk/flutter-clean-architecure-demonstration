import '../character_list/character_model.dart';

abstract class CharacterDetailRepository {
  Future<CharacterModel> getCharacterById(int id);
}
