import 'package:flutter/material.dart';

ThemeData lightMode = ThemeData(
    colorScheme: ColorScheme.light(
        surface: Colors.grey.shade300,
        primary: Colors.grey.shade500,
        secondary: Colors.grey.shade100,
        tertiary: Colors.white,
        inversePrimary: Colors.grey.shade700,
        error: const Color.fromARGB(255, 113, 33, 27),
        onError: Colors.white));
