import 'package:clean_architecture_demonstration/data/character_detail/api_service/character_detail_api_service.dart';
import 'package:clean_architecture_demonstration/data/character_list/api_service/character_list_api_service.dart';
import 'package:clean_architecture_demonstration/data/character_list/model/character_dto.dart';
import 'package:clean_architecture_demonstration/data/character_list/model/location_dto.dart';
import 'package:clean_architecture_demonstration/domain/character_detail/character_detail_repository.dart';
import 'package:clean_architecture_demonstration/domain/character_list/character_list_repository.dart';
import 'package:clean_architecture_demonstration/domain/character_list/character_model.dart';
import 'package:mockito/annotations.dart';

@GenerateMocks([
  CharacterListRepository,
  CharacterListApiService,
  CharacterDetailRepository,
  CharacterDetailApiService,
  CharacterModel
])

void main() {}
