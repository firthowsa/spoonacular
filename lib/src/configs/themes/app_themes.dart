

import 'package:flutter/material.dart';

import 'color_schemes.g.dart';

abstract class AppTheme {
  static ThemeData get light {
    return ThemeData(
      useMaterial3: true,
      colorScheme: lightColorScheme,


    );
  }

  static ThemeData get dark {
    return ThemeData(
        useMaterial3: true,
        colorScheme: darkColorScheme

    );
  }


}
