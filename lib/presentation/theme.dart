import 'package:clean_architecture_demonstration/presentation/utils/custom_colors.dart';
import 'package:flutter/material.dart';

ThemeData defaultTheme() {
  return ThemeData.dark().copyWith(
    cardColor: CustomColors.tuna,
    scaffoldBackgroundColor: CustomColors.shark,
    hintColor: CustomColors.tuna,
  );
}
