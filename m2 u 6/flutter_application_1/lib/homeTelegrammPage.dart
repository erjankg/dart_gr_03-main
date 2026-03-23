import 'package:flutter/material.dart';
import 'package:flutter_application_1/appDrawer.dart';

class HomeTelegrammPage extends StatelessWidget {
  const HomeTelegrammPage({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Telegramm Drawer'),
      ),
      drawer: const AppDrawer(),
      body: Center(
        child: Text('Чаты', style:TextStyle(fontSize: 22), ),

      ),
    );
  }


  
}