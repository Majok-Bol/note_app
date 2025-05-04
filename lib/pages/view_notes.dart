//handle view notes functionality
import 'package:flutter/material.dart';
class ViewNotes extends StatelessWidget{
  const ViewNotes({super.key});
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(12),
        child:const  Column(
          children: [
            Center(
              child: Text('Saved notes'),
            )

          ],
        ),
      ),

    );
  }
}