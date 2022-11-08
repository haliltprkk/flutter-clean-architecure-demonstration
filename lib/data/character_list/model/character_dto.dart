import 'package:clean_architecture_demonstration/domain/character_list/character_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'location_dto.dart';

part 'character_dto.freezed.dart';

part 'character_dto.g.dart';

@freezed
class CharacterDto with _$CharacterDto {
  @JsonSerializable()
  const factory CharacterDto({
    @JsonKey(name: 'id') required int id,
    @JsonKey(name: 'name') required String name,
    @JsonKey(name: 'status') required String status,
    @JsonKey(name: 'species') required String species,
    @JsonKey(name: 'type') required String type,
    @JsonKey(name: 'gender') required String gender,
    @JsonKey(name: 'image') required String image,
    @JsonKey(name: 'created') required String created,
    @JsonKey(name: 'url') required String url,
    @JsonKey(name: 'origin') required LocationDto origin,
    @JsonKey(name: 'location') required LocationDto location,
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
      origin: origin.name ?? "unknown",
      location: location.name ?? "unknown");
}
