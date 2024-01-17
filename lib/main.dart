import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:news_app/Config/Theme.dart';

import 'Pages/HomePage/HomePage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'News App',
      theme: lightTheme,
      themeMode: ThemeMode.system,
      darkTheme: darkTheme,
      home: HomePage(),
    );
  }
}
