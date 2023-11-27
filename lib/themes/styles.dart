import 'package:flutter/material.dart';
import 'package:anime_client/themes/colors.dart';

ButtonStyle outlinedButtonStyle = const ButtonStyle(
  side: MaterialStatePropertyAll(BorderSide(width: 3.0, color: AppColors.primary)),
);

ButtonStyle filledButtonStyle = const ButtonStyle(
  backgroundColor: MaterialStatePropertyAll<Color>(AppColors.primary),
);

TextStyle textStyle = const TextStyle(color: AppColors.primary);