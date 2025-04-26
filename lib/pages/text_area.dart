//handle text input
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextArea extends StatelessWidget{
  const TextArea({super.key});
  @override
  Widget build(BuildContext context){
    return Scaffold(
      // backgroundColor: Colors.grey.shade200,
      body:Container(

        height: 500,
        padding: EdgeInsets.all(10),
        child:Padding(padding: EdgeInsets.all(12),

        child: TextField(
          expands: true,
          maxLines: null,
          minLines: null,
          cursorColor: Colors.black,
          textAlignVertical: TextAlignVertical.top,
          decoration: InputDecoration(
            border: InputBorder.none,
            contentPadding: EdgeInsets.all(10),

            hintText: 'Write your notes here',
            // border: OutlineInputBorder()
          ),
        ),
      ),
      ),
    );

  }
}