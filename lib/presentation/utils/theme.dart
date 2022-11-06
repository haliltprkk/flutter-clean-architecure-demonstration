import 'package:flutter/material.dart';
import 'custom_colors.dart';

ThemeData defaultTheme() {
  return ThemeData.dark().copyWith(
    cardColor: CustomColors.tuna,
    scaffoldBackgroundColor: CustomColors.bunker,
    hintColor: CustomColors.tuna,
  );
}
