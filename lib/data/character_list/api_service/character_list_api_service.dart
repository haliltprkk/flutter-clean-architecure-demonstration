import 'package:retrofit/http.dart';
import 'package:dio/dio.dart';
import '../model/character_list_dto.dart';

part 'character_list_api_service.g.dart';

@RestApi()
abstract class CharacterListApiService {
  factory CharacterListApiService(Dio dio, {String baseUrl}) = _CharacterListApiService;

  @GET("character")
  Future<CharacterListDto> getCharacters();
}
