import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
ThemeData lightMode=ThemeData(
  brightness: Brightness.light,
  colorScheme:ColorScheme.light(
    surface: Colors.grey.shade300,
    primary: Colors.grey.shade200,
    secondary: Colors.grey.shade100,
    onPrimary: Colors.white70,           // text on primary color
    onSurface: Colors.black87,

  )
);
ThemeData darkMode=ThemeData(
  brightness: Brightness.dark,
  colorScheme: ColorScheme.dark(
    surface: Colors.grey.shade700,
    primary: Colors.grey.shade600,
    secondary: Colors.grey.shade500,
    onPrimary: Colors.black,           // text on primary color
    onSurface: Colors.white,

  )
);
