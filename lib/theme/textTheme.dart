import 'package:flutter/material.dart';
import 'package:smartcamp/theme/colorSets.dart';

const textDefault = const TextTheme(
  headline3: const TextStyle(
    fontSize: 24.0,
    height: 1.33,
    fontWeight: FontWeight.w600,
    fontStyle: FontStyle.normal,
  ),
  headline4: const TextStyle(
    fontSize: 24.0,
    height: 1.33,
    fontFamily: 'Jost',
    fontWeight: FontWeight.w100,
    fontStyle: FontStyle.normal,
  ),
  bodyText1: const TextStyle(
    fontSize: 17.0,
    height: 1.47,
    fontStyle: FontStyle.normal,
    color: colorTextBody,
  ),
  bodyText2: const TextStyle(
    fontSize: 15.0,
    height: 1.47,
    fontStyle: FontStyle.normal,
    color: colorTextBody,
  ),
  subtitle2: const TextStyle(
    fontSize: 13.0,
    height: 1.47,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.w600,
    color: colorTextBody,
  ),
);
