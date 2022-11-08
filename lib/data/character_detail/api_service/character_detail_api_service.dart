import 'package:clean_architecture_demonstration/data/character_list/model/character_dto.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';

part 'character_detail_api_service.g.dart';

@RestApi()
abstract class CharacterDetailApiService {
  factory CharacterDetailApiService(Dio dio, {String baseUrl}) = _CharacterDetailApiService;

  @GET("character/{id}")
  Future<CharacterDto> getCharacter(@Path("id") int id);
}
