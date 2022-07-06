import 'package:flutter/material.dart';
import 'package:smartcamp/theme/colorSets.dart';

ElevatedButtonThemeData elevatedButtonTheme() {
  return ElevatedButtonThemeData(
    style: ButtonStyle(
      elevation: MaterialStateProperty.all(0.0),
      shape: MaterialStateProperty.all(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.0),
        ),
      ),
    ),
  );
}
