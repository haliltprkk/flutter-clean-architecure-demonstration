import 'package:clean_architecture_demonstration/data/character_list/api_service/character_list_api_service.dart';
import 'package:clean_architecture_demonstration/data/character_list/model/character_dto.dart';
import 'package:clean_architecture_demonstration/domain/character_list/character_list_repository.dart';
import 'package:clean_architecture_demonstration/domain/character_list/character_model.dart';
import 'package:injectable/injectable.dart';

class CharacterListRepositoryImpl extends CharacterListRepository {
  final CharacterListApiService _characterListApiService;

  CharacterListRepositoryImpl(this._characterListApiService);

  @override
  Future<List<CharacterModel>> getCharacters() async {
    final response = await _characterListApiService.getCharacters();
    return response.results.map((CharacterDto model) => model.toDomain()).toList();
  }
}
