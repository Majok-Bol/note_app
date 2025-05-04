//handle text input
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextArea extends StatefulWidget {
  @override
  TextAreaState createState() => TextAreaState();
}
class TextAreaState extends State<TextArea>{
  //store task items
  final List<String>taskItems=[];
  final TextEditingController itemController=TextEditingController();
  int? editIndex;
  //function to add task
  void addTask(){
    setState(() {
      if (itemController.text.isNotEmpty) {
        if (editIndex == null) {
          taskItems.add(itemController.text);
        } else {
          //update existing task
          taskItems[editIndex!] = itemController.text;
          editIndex = null;
        }
        itemController.clear();
      }
      itemController.clear();

    });
  }
  //function to remove task
  void removeTask(int index){
    setState(() {
      taskItems.removeAt(index);
    });
  }
  //function to edit task
  void editTask(int index){
    setState(() {
      //if there is item to edit
      //then edit it
      //based on index
      itemController.text=taskItems[index];
      editIndex=index;
    });
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      // backgroundColor: Colors.grey.shade200,
      body:Container(

        height: 500,
        padding: EdgeInsets.all(10),
        child:Padding(padding: EdgeInsets.all(12),

        child: TextField(
          controller:itemController ,
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