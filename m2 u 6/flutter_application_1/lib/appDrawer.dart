import 'package:flutter/material.dart';
import 'package:flutter_application_1/callPage.dart';
import 'package:flutter_application_1/contactPage.dart';

class AppDrawer extends StatelessWidget{
  const AppDrawer({super.key});


  @override
  Widget build(BuildContext context) {
  final telegrammBlue = const Color(0xFF2AABEE);
  return Drawer(
    child: ListView(
      padding: EdgeInsets.zero,
      children: [
        Container(
          height: 170,
          padding: EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: telegrammBlue,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              CircleAvatar(
                radius: 30,
                backgroundColor: Colors.white,
                child: Icon(Icons.person, size: 40, color: Color(0xFF2AABEE),),


              ),
              SizedBox(height: 12,),
              Text('ERjanKG', style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.w500 ),) ,
              Text( '+996 704 03 21 10' , style: TextStyle(color: Colors.white),

              )

            ],
          ),
        ),
        drawerItem(context, icon: Icons.chat, title: 'Чаты', onTap: ()=> Navigator.pop(context),),

        drawerItem(context, icon: Icons.call, title: 'Звонки', onTap:(){ Navigator.push(context,
        MaterialPageRoute(builder: (_) => CallPage()
        ),
        );
        
        
        }
        ),
        drawerItem(context, icon: Icons.call, title: 'Контакты', onTap:(){ Navigator.push(context,
        MaterialPageRoute(builder: (_) => ContactPage()
        ),
        );
        Divider();
        
        }
        ),
        drawerItem(context, icon: Icons.chat, title: 'Чаты', onTap: ()=> Navigator.pop(context),),
      ],
      ),
    
    );
   
  }
 Widget drawerItem (
  BuildContext context , {
    required IconData  icon,
    required String title,
    required VoidCallback onTap,
  }
 )
 {
  return  ListTile(
    leading: Icon(icon, color: Colors.black87,
    ),
    title: Text(title),
    onTap: onTap,
    horizontalTitleGap: 8,
  );
 }

  }