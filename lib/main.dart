import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weather_app_v1/theme_provider/theme_provider.dart';
import 'package:weather_app_v1/weather.dart';
import 'package:weather_app_v1/theme/theme.dart';

void main() {
  runApp(ChangeNotifierProvider(
      create: (context) => ThemeProvider(), child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Weather(),
      theme: Provider.of<ThemeProvider>(context).themeData,
    );
  }
}
