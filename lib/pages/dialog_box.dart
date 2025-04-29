//handle dialog box functionality
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DialogBox extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Dialog(
      child: Container(
        padding: EdgeInsets.all(12),
        child: Column(
          children: [
            Row(children: [
              ElevatedButton(onPressed:() {

              }, child: Text('Save')),
              ElevatedButton(onPressed:() {

              }, child: Text('Cancel')),
            ],)

          ],
        ),

      ),
    );
  }
}