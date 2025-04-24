//handle home page
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: Text('My Note App'),centerTitle: true,backgroundColor: Colors.grey.shade300),
      drawer: Drawer(
        width: 250,
        child: Column(children: [


        ],),
      ),
    );

  }
}