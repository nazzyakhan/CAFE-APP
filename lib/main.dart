import 'package:flutter/material.dart';
import 'package:junkfoodiez/auth/login_or_register.dart';
import 'package:junkfoodiez/models/restaurant.dart';
import 'package:junkfoodiez/pages/login_page.dart';
import 'package:junkfoodiez/themes/theme_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        //theme
        ChangeNotifierProvider(
          create: (context) => ThemeProvider(),
        ),
        //restaurant
        ChangeNotifierProvider(create: (context) => Restaurant()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginOrRegister(),
      theme: Provider.of<ThemeProvider>(context).themeData,
    );
  }
}
