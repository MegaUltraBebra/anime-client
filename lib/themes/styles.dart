import 'package:flutter/material.dart';
import 'package:anime_client/themes/colors.dart';

const headline1 = TextStyle(fontWeight: FontWeight.w400, fontSize: 25);
const double headline2 = 14;

ButtonStyle outlinedButtonStyle = const ButtonStyle(
  side: MaterialStatePropertyAll(BorderSide(width: 3.0, color: AppColors.primary)),
);

ButtonStyle filledButtonStyle = const ButtonStyle(
  backgroundColor: MaterialStatePropertyAll<Color>(AppColors.primary),
);

TextStyle outlinedTextStyle = const TextStyle(color: AppColors.primary);
TextStyle lableTextStyle = const TextStyle(color: AppColors.textcolor, fontSize: 25);
TextStyle titleTextStyle = const TextStyle(color: AppColors.textcolor, fontSize: 25);
TextStyle subtitleTextStyle = const TextStyle(color: AppColors.textcolor, fontSize: 20);
TextStyle microsubtitleTextStyle = const TextStyle(color: AppColors.textcolor, fontSize: 14);
TextStyle uiTextStyle = const TextStyle(color: AppColors.textcolor, fontSize: 20);