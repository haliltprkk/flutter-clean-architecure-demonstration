import 'package:freezed_annotation/freezed_annotation.dart';

import 'character_dto.dart';
import 'info_dto.dart';

part 'character_list_dto.freezed.dart';

part 'character_list_dto.g.dart';

@freezed
class CharacterListDto with _$CharacterListDto {
  const factory CharacterListDto({
    required InfoDto info,
    required List<CharacterDto> results,
  }) = _CharacterListDto;

  factory CharacterListDto.fromJson(Map<String, dynamic> json) => _$CharacterListDtoFromJson(json);
}
