//handle home page
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget{
  const HomePage({super.key});
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: Text('SimpleNoteX'),centerTitle: true,backgroundColor: Colors.grey.shade300),
      drawer: Drawer(
        surfaceTintColor: Colors.blue.shade900,
        width: 250,

        child: Column(
          children: [
            DrawerHeader(child:CircleAvatar(radius: 100,backgroundColor: Colors.grey.shade400,)),
            Column(
              children: [
                Padding(padding:EdgeInsets.all(1),child: ListTile(onTap:(){},leading:Icon(Icons.sticky_note_2_outlined),title:Text('View notes'))),

                Padding(padding:EdgeInsets.all(1),child: ListTile(onTap:(){},leading:Icon(Icons.favorite_border),title:Text('Favorites'))),
                Padding(padding:EdgeInsets.all(1),child: ListTile(onTap:(){},leading:Icon(Icons.sunny),title:Text('Switch mode'))),
                Padding(padding:EdgeInsets.all(1),child: ListTile(onTap:(){},leading:Icon(Icons.logout),title:Text('Logout'))),
              ],
            )
          ],
        ),

      ),

    );

  }
}