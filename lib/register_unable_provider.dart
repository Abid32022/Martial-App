
import 'package:flutter/material.dart';
class RegisterUnableProvider with ChangeNotifier{

  int currentIndex = -1 ;


  void changeIndex(index){
    currentIndex = index;
    notifyListeners();
  }



}