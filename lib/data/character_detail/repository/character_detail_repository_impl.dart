import 'package:clean_architecture_demonstration/data/character_detail/api_service/character_detail_api_service.dart';
import 'package:clean_architecture_demonstration/data/character_list/model/character_dto.dart';
import 'package:clean_architecture_demonstration/domain/character_detail/character_detail_repository.dart';
import 'package:clean_architecture_demonstration/domain/character_list/character_model.dart';

class CharacterDetailRepositoryImpl extends CharacterDetailRepository {
  final CharacterDetailApiService _apiService;

  CharacterDetailRepositoryImpl(this._apiService);

  @override
  Future<CharacterModel> getCharacterById(int id) async {
    final response = await _apiService.getCharacter(id);
    return response.toDomain();
  }
}
