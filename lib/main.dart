import 'package:flutter/material.dart';
import 'package:note_app/pages/home_page.dart';
import 'package:note_app/themes/themes_provider.dart';
import 'package:provider/provider.dart';
void main(){
  runApp(ChangeNotifierProvider(create:(context)=>ThemeProvider(),child: MyApp(),));
}
class MyApp extends StatelessWidget{
  const MyApp({super.key});
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      theme:Provider.of<ThemeProvider>(context).themeData,
    );
  }
}