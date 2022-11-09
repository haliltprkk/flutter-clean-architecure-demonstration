import 'package:clean_architecture_demonstration/data/character_list/model/character_dto.dart';
import 'package:clean_architecture_demonstration/data/character_list/model/character_list_dto.dart';
import 'package:clean_architecture_demonstration/data/character_list/model/info_dto.dart';
import 'package:clean_architecture_demonstration/data/character_list/model/location_dto.dart';
import 'package:clean_architecture_demonstration/domain/character_list/character_model.dart';

const CharacterDto characterDto = CharacterDto(
    id: 0,
    name: "name",
    status: "status",
    species: "species",
    type: "type",
    gender: "gender",
    image: "image",
    created: "created",
    url: "url",
    origin: LocationDto(name: '', url: ''),
    location: LocationDto(name: '', url: ''));

const CharacterModel characterModel = CharacterModel(
    id: 0,
    name: "name",
    status: "status",
    species: "species",
    type: "type",
    gender: "gender",
    image: "image",
    created: "created",
    url: "url",
    origin: "",
    location: "");

const characterDtoList = [characterDto, characterDto, characterDto];

const characterListDto = CharacterListDto(
    info: InfoDto(count: 0, pages: 0, next: "next"),
    results: [characterDto, characterDto, characterDto]);

getMockCharacterDto() {
  return characterDto;
}

getMockCharacterModel() {
  return characterModel;
}

getMockCharacterListDto() {
  return characterListDto;
}
