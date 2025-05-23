import 'package:flutter/material.dart';

class Number {
  final Color backCol;
  final String sound;
  final String jptext;
  final String entext;
   String ?img;
 
   Number({
    required this.sound,
     this.img,
    required this.jptext,
    required this.entext,
    required this.backCol,
    
  });
}
