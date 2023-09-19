import 'package:flutter/material.dart';
import 'package:islami/home.dart';
import 'package:islami/my_theme_data.dart';
import 'package:islami/suradetails.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: HomeScreen.routeName,
      routes: {
        HomeScreen.routeName: (context) => HomeScreen(),

        SuraDetails.routName: (context) => SuraDetails(),
      },
      debugShowCheckedModeBanner: false,
      theme: MyThemeData.LightTheme,
      darkTheme: MyThemeData.DarkTheme,
    );
  }
}
