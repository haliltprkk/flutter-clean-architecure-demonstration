import 'package:clean_architecture_demonstration/domain/character_list/character_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'location_dto.dart';

part 'character_dto.freezed.dart';

part 'character_dto.g.dart';

@freezed
@JsonSerializable()
class CharacterDto with _$CharacterDto {
  const factory CharacterDto({
    required int id,
    required String name,
    required String status,
    required String species,
    required String type,
    required String gender,
    required String image,
    required String created,
    required String url,
    required LocationDto origin,
    required LocationDto location,
  }) = _CharacterDto;

  factory CharacterDto.fromJson(Map<String, dynamic> json) => _$CharacterDtoFromJson(json);
}

extension Mapper on CharacterDto {
  CharacterModel toDomain() => CharacterModel(
      id: id,
      name: name,
      created: created,
      gender: gender,
      image: image,
      species: species,
      status: status,
      type: type,
      url: url,
      origin: origin.name,
      location: location.name);
}
