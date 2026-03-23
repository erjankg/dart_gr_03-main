import 'package:flutter/material.dart';
import 'package:flutter_application_1/homeTelegrammPage.dart';

class TelegrammApp extends StatelessWidget{
  const TelegrammApp ({super.key});
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    debugShowCheckedModeBanner: false,
    title: ' Telegramm Drawer',
    theme: ThemeData(
      useMaterial3: true,
      scaffoldBackgroundColor: Colors.grey,
      colorSchemeSeed: const Color(0xFF2AABEE),
      drawerTheme: const DrawerThemeData(
        backgroundColor: Colors.white,
      )
    ),
    home: HomeTelegrammPage(),
    );
  
}
}