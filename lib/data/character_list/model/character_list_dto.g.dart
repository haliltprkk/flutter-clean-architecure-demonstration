// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'character_list_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CharacterListDto _$$_CharacterListDtoFromJson(Map<String, dynamic> json) =>
    _$_CharacterListDto(
      info: InfoDto.fromJson(json['info'] as Map<String, dynamic>),
      results: (json['results'] as List<dynamic>)
          .map((e) => CharacterDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_CharacterListDtoToJson(_$_CharacterListDto instance) =>
    <String, dynamic>{
      'info': instance.info,
      'results': instance.results,
    };
