import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget{
  const HomePage({super.key});
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('NoteFlow'),
        centerTitle:true,
        backgroundColor: Colors.grey.shade300,
        leading: Builder(builder:(context)=>IconButton(onPressed:(){
          Scaffold.of(context).openDrawer();
        },icon: Icon(Icons.menu),)),
      ),
      drawer:Drawer(
        backgroundColor: Colors.grey.shade100,
        child: Column(
          children: [
            DrawerHeader(child: CircleAvatar(radius: 60,backgroundImage:AssetImage('lib/assets/images/bash.jpeg'),)),
            Padding(padding: EdgeInsets.all(2),child: ListTile(
              onTap:() {

              },
              title:Text('View notes'),
              leading: Icon(Icons.sticky_note_2_outlined),),),
            Padding(padding: EdgeInsets.all(2),
              child: ListTile(
                onTap:() {

                },
                title:Text('Favorites'),
                leading: Icon(Icons.favorite),),),
            Padding(padding: EdgeInsets.all(2),
              child: ListTile(
                onTap:() {

                },
                title:Text('Switch Mode'),
                leading: Icon(Icons.sunny),),),
            Padding(padding: EdgeInsets.all(2),
              child: ListTile(
                onTap:() {

                },
                title:Text('Logout'),
      leading: Icon(Icons.logout),),),
          ],
        ),
      ),
    );
  }

}