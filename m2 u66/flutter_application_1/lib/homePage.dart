import 'package:flutter/material.dart';

class HomePage extends StatelessWidget{
  final VoidCallback onToggleTheme;
  final ThemeMode themeMode;

  const HomePage({ 
    super.key,
    required this.onToggleTheme,
    required this.themeMode,
  });


  @override
  Widget build(BuildContext context) {
  return Scaffold (
    appBar: AppBar(
      centerTitle: true,
      title: Text( ' ThemeData & ThemeMode' ),
    ),
    floatingActionButton: FloatingActionButton(onPressed: onToggleTheme, 
    child: Icon(
      themeMode == ThemeMode.light ? Icons.dark_mode : Icons.light_mode,
    ),
    ),
    body: Center(
      child: Text(
        themeMode == ThemeMode.light ? 'Светлая Тема' : 'Темная Тема',
        ) ,
        ),
    );
  }
}