import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:note_app/pages/text_area.dart';
import 'package:note_app/themes/themes_provider.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget{
  const HomePage({super.key});
  @override
  Widget build(BuildContext context){

    return Scaffold(
      appBar: AppBar(
        title: Text('NoteFlow'),
        centerTitle:true,
        // backgroundColor: Colors.grey.shade700,
        leading: Builder(builder:(context)=>IconButton(onPressed:(){
          Scaffold.of(context).openDrawer();
        },icon: Icon(Icons.menu),)),
      ),
      drawer:Drawer(
        // backgroundColor: Colors.grey.shade100,
        child: Column(
          children: [
            DrawerHeader(child: CircleAvatar(radius: 60,backgroundImage:AssetImage('lib/assets/images/bash.jpeg'),)),
            Padding(padding: EdgeInsets.all(2),child: ListTile(
              onTap:() {

              },
              title:Text('View notes'),
              leading: Icon(Icons.notes),),),
            Padding(padding: EdgeInsets.all(2),
              child: ListTile(
                onTap:() {

                },
                title:Text('Favorites'),
                leading: Icon(Icons.star_border,),),),
            Padding(padding: EdgeInsets.all(2),
              child: ListTile(
                onTap:() {
                  Provider.of<ThemeProvider>(context,listen: false).toggleTheme();

                },
                title:Text('Switch Mode'),
                leading: Icon(Icons.brightness_2),),),
          ],
        ),
      ),
      body:TextArea(),

      bottomNavigationBar:Theme(data:Theme.of(context).copyWith(bottomNavigationBarTheme: BottomNavigationBarThemeData(
          selectedLabelStyle: TextStyle(fontSize:15),
        unselectedLabelStyle: TextStyle(fontSize: 15),
        selectedItemColor: Colors.black87,
        unselectedItemColor: Colors.black87,
      )), child:BottomNavigationBar(
        // backgroundColor: Colors.grey.shade200,
        items: [
        BottomNavigationBarItem(icon:Icon(Icons.save,color: Colors.green,),label: 'Save'),
        BottomNavigationBarItem(icon: Icon(Icons.share,color: Colors.blue,),label: 'Share'),
        // BottomNavigationBarItem(icon:Icon(Icons.search),label: 'Search')
      ])),


    );

  }

}