import 'package:flutter/material.dart';
import 'package:tuko/components/item.dart';
import '../models/number.dart';

class NumberPage extends StatelessWidget {
   NumberPage({super.key});
  final List<Number> numbers =  [
    Number(
      sound: "number_one_sound.mp3",
      img: "assets/images/numbers/number_one.png",
      jptext: "ichi",
      entext: "one",
      backCol: Color(0xffFF9F3B),
    ),
    Number(
      sound: "number_two_sound.mp3",
      img: "assets/images/numbers/number_two.png",
      jptext: "ni",
      entext: "two",
      backCol: Color(0xffFF9F3B),
    ),
    Number(
      sound: "number_three_sound.mp3",
      img: "assets/images/numbers/number_three.png",
      jptext: "San",
      entext: "Three",
      backCol: Color(0xffFF9F3B),
    ),
    Number(
      sound: "number_four_sound.mp3",
      img: "assets/images/numbers/number_four.png",
      jptext: "Shi",
      entext: "Four",
      backCol: Color(0xffFF9F3B),
    ),
    Number(
      sound: "number_five_sound.mp3",
      img: "assets/images/numbers/number_five.png",
      jptext: "Go",
      entext: "Five",
      backCol: Color(0xffFF9F3B),
    ),
    Number(
      sound: "number_six_sound.mp3",
      img: "assets/images/numbers/number_six.png",
      jptext: "Roku",
      entext: "Six",
      backCol: Color(0xffFF9F3B),
    ),
    Number(
      sound: "number_seven_sound.mp3",
      img: "assets/images/numbers/number_seven.png",
      jptext: "Sebun",
      entext: "Seven",
      backCol: Color(0xffFF9F3B),
    ),
    Number(
      sound: "number_eight_sound.mp3",
      img: "assets/images/numbers/number_eight.png",
      jptext: "Hachi",
      entext: "Eight",
      backCol: Color(0xffFF9F3B),
    ),
    Number(
      sound: "number_nine_sound.mp3",
      img: "assets/images/numbers/number_nine.png",
      jptext: "Kyu",
      entext: "Nine",
      backCol: Color(0xffFF9F3B),
    ),
    Number(
      sound: "number_ten_sound.mp3",
      img: "assets/images/numbers/number_ten.png",
      jptext: "Ju",
      entext: "Ten",
      backCol: Color(0xffFF9F3B),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Numbers",
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
          return Item(number: numbers[index],type: "numbers",colorback: Color(0xffFEFDE4),);
        },
        itemCount: numbers.length,
      ),
    );
  }

  List<Widget> getlist(List<Number> numbers) {
    List<Widget> itemlist = [];
    for (int i = 0; i < numbers.length; i++) {
      itemlist.add(Item(number: numbers[i],type: "numbers",colorback: Color(0xffFEFDE4),));
    }
    return itemlist;
  }
}
