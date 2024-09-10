import 'package:flutter/material.dart';

class CounterScreenController with ChangeNotifier{
  int counter = 10;


 void increment (){
  counter++;
  notifyListeners();
 }
 void decrement (){
  counter--;
  notifyListeners();
 }

}
