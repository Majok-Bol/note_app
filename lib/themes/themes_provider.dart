//handle themes
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:note_app/themes/theme.dart';
import 'package:provider/provider.dart';
class ThemeProvider with ChangeNotifier{
ThemeData _themeData=lightMode;
//getter for theme
ThemeData get themeData=>_themeData;
//setter to set theme
set themeData(ThemeData themeData){
  _themeData=themeData;
  //notify listeners
  notifyListeners();
}
//toggle theme
void toggleTheme(){
  if(_themeData==lightMode){
    themeData=darkMode;
    notifyListeners();
  }else{
    themeData=lightMode;
  }
}

}