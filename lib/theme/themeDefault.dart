import 'package:flutter/material.dart';
import 'package:smartcamp/theme/colorSets.dart';
import 'package:smartcamp/theme/elevatedButtonTheme/elevatedButtonTheme.dart';
import 'package:smartcamp/theme/inputFromFieldTheme/inputFromFieldTheme.dart';
import 'package:smartcamp/theme/textTheme.dart';

const lightColorScheme = ColorScheme(
  brightness: Brightness.light,
  primary: Color(0xFF32B768),
  onPrimary: Color(0xFFFFFFFF),
  primaryContainer: Color(0xFFB7E6CA),
  onPrimaryContainer: Color(0xFF47825F),
  secondary: Color(0xFF52665A),
  onSecondary: Color(0xFFFFFFFF),
  secondaryContainer: Color(0xFFB1BAB5),
  onSecondaryContainer: Color(0xFF3C5245),
  tertiary: Color(0xFF386668),
  onTertiary: Color(0xFFFFFFFF),
  tertiaryContainer: Color(0xFFBCEBED),
  onTertiaryContainer: Color(0xFF002022),
  error: Color(0xFFEB5757),
  errorContainer: Color(0xFFF8C4C4),
  onError: Color(0xFFFFFFFF),
  onErrorContainer: Color(0xFFA64242),
  background: Color(0xFFF5FBF7),
  onBackground: Color(0xFF191D18),
  surface: Color(0xFFF5FBF7),
  onSurface: Color(0xFF191D18),
  surfaceVariant: Color(0xFFCDD1CC),
  onSurfaceVariant: Color(0xFF5C6660),
  outline: Color(0xFF717B6E),
  onInverseSurface: Color(0xFFF0F1EC),
  inverseSurface: Color(0xFF2F312E),
  inversePrimary: Color(0xFF5FDE8A),
  shadow: Color(0xFF000000),
);

ThemeData themeDefault() {
  return ThemeData(
    useMaterial3: true,
    colorScheme: lightColorScheme,
    brightness: Brightness.light,
    // fontFamily: 'Jost',
    // colorScheme: _shrineColorScheme,
    // primaryColor: colorGreenPrimary,
    // backgroundColor: colorBackground,
    // inputDecorationTheme: inputDecorationTheme(),
    // elevatedButtonTheme: elevatedButtonTheme(),
    textTheme: textDefault,
  );
}
