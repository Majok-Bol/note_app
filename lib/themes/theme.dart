import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
ThemeData lightMode=ThemeData(
  brightness: Brightness.light,
  colorScheme:ColorScheme.light(
    primary: Colors.grey.shade400,
    secondary: Colors.grey.shade300,
    surface: Colors.grey.shade200,
  )
);
ThemeData darkMode=ThemeData(
  brightness: Brightness.dark,
  colorScheme: ColorScheme.dark(
    surface: Colors.grey.shade900,
    primary: Colors.grey.shade800,
    secondary: Colors.grey.shade700,

  )
);