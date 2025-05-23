import 'package:flutter/material.dart';
import 'package:tuko/components/item.dart';
import 'package:tuko/models/number.dart';

class ColorPage extends StatelessWidget {
  ColorPage({super.key});
  List<Number> colorItem = [
    Number(
      sound: "black.wav",
      img: "assets/images/colors/color_black.png",
      jptext: "Burakkju",
      entext: "Black",
      backCol: Color(0xff7D40A2),
    ),
    Number(
      sound: "brown.wav",
      img: "assets/images/colors/color_brown.png",
      jptext: "Chairo",
      entext: "Brown",
      backCol: Color(0xff7D40A2),
    ),
    Number(
      sound: "brown.wav",
      img: "assets/images/colors/color_brown.png",
      jptext: "Chairo",
      entext: "Brown",
      backCol: Color(0xff7D40A2),
    ),
    Number(
      sound: "dusty yellow.wav",
      img: "assets/images/colors/color_dusty_yellow.png",
      jptext: "Hokori ppoi kiiro",
      entext: "dusty yellow",
      backCol: Color(0xff7D40A2),
    ),
    Number(
      sound: "gray.wav",
      img: "assets/images/colors/color_gray.png",
      jptext: "Gure",
      entext: "Gray",
      backCol: Color(0xff7D40A2),
    ),
    Number(
      sound: "green.wav",
      img: "assets/images/colors/color_green.png",
      jptext: "Midori",
      entext: "Green",
      backCol: Color(0xff7D40A2),
    ),
    Number(
      sound: "red.wav",
      img: "assets/images/colors/color_red.png",
      jptext: "Aka",
      entext: "red",
      backCol: Color(0xff7D40A2),
    ),
    Number(
      sound: "white.wav",
      img: "assets/images/colors/color_white.png",
      jptext: "Shoiroi",
      entext: "White",
      backCol: Color(0xff7D40A2),
    ),
    Number(
      sound: "yellow.wav",
      img: "assets/images/colors/yellow.png",
      jptext: "Shoiroi",
      entext: "Yellow",
      backCol: Color(0xff7D40A2),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Colors",
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.w400,
          ),
        ),
        backgroundColor: Color(0xff533D35),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Item(number: colorItem[index], type: "colors",colorback: Color(0xffFEFDE4),);
        },
        itemCount: colorItem.length,
      ),
    );
  }
}
