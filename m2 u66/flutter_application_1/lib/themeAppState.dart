import 'package:flutter/material.dart';
import 'package:flutter_application_1/homePage.dart';
import 'package:flutter_application_1/themeApp.dart';

class ThemeAppState extends State<ThemeApp>{

ThemeMode themeMode = ThemeMode.light;


void toggleTheme(){

  setState((){
    themeMode = themeMode == ThemeMode.light ? ThemeMode.dark : ThemeMode.light;
  });
}
 
 
 @override
  Widget build(BuildContext context) {
   return MaterialApp(
    title: ' title mode',
    themeMode: themeMode,
    theme: ThemeData(
      brightness: Brightness.light,
      scaffoldBackgroundColor: Colors.white,
      appBarTheme: const AppBarTheme(
        backgroundColor: Colors.blueAccent,
        ),
        floatingActionButtonTheme: const FloatingActionButtonThemeData(
          backgroundColor: Colors.blueAccent
        )
      ),
darkTheme: ThemeData(
  brightness: Brightness.dark,
  scaffoldBackgroundColor: Colors.black,
  appBarTheme: const AppBarTheme(
    backgroundColor: Colors.deepPurpleAccent,
  ),
  floatingActionButtonTheme: const FloatingActionButtonThemeData(
    backgroundColor: Colors.deepPurpleAccent,
  ),
),

home: HomePage(
  onToggleTheme: toggleTheme,
  themeMode: themeMode,),
    );
  
  }



}