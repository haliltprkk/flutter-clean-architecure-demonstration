import 'package:freezed_annotation/freezed_annotation.dart';

import '../../presentation/utils/custom_colors.dart';

part 'character_model.freezed.dart';

@freezed
class CharacterModel with _$CharacterModel {
  const CharacterModel._();

  const factory CharacterModel({
    required int id,
    required String name,
    required String created,
    required String gender,
    required String image,
    required String species,
    required String status,
    required String type,
    required String url,
    required String origin,
    required String location,
  }) = _CharacterModel;

  String getStatusAndSpecies() {
    return "${status} - ${species}";
  }

  getStatusColor() {
    if (status == "Alive") {
      return CustomColors.apple;
    } else if (status == "Dead") {
      return CustomColors.valencia;
    } else {
      return CustomColors.shark;
    }
  }
}
