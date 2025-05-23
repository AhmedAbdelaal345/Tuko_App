import 'package:flutter/material.dart';
import 'package:tuko/components/item.dart';
import 'package:tuko/models/number.dart';

class PhrasePage extends StatelessWidget {
  PhrasePage({super.key});
  List<Number> phraseItem = [
    Number(
      sound: "are_you_coming.wav",
      jptext: "Kimusa Ka",
      entext: "Are You Coming",
      backCol: Color(0xff47A5CB),
    ),
    Number(
      sound: "dont_forget_to_subscribe.wav",
      jptext: "Kōdoku o o Wasurenaku ",
      entext: "Don't Forget to Subscribe",
      backCol: Color(0xff47A5CB),
    ),
    Number(
      sound: "how_are_you_feeling.wav",
      jptext: "Go kibun wa ikagadesu ka",
      entext: "How Are You Feeling",
      backCol: Color(0xff47A5CB),
    ),
    Number(
      sound: "i_love_anime.wav",
      jptext: "Anime ga daisuki",
      entext: "I Love Anime",
      backCol: Color(0xff47A5CB),
    ),
    Number(
      sound: "i_love_programming.wav",
      jptext: "Watashi wa puroguramingu ga daisukidesu",
      entext: "I love porgramming",
      backCol: Color(0xff47A5CB),
    ),
    Number(
      sound: "programming_is_easy.wav",
      jptext: "Puroguramingu wa kantan",
      entext: "Porgramming is easy",
      backCol: Color(0xff47A5CB),
    ),
    Number(
      sound: "what_is_your_name.wav",
      jptext: "Anata no namae wa nandesuka",
      entext: "What is Your Name",
      backCol: Color(0xff47A5CB),
    ),
    Number(
      sound: "where_are_you_going.wav",
      jptext: "Doko ni iku no ?",
      entext: "Where Are You going ?",
      backCol: Color(0xff47A5CB),
    ),
    Number(
      sound: "are_you_coming.wav",
      jptext: "Kimusa Ka",
      entext: "Are You Coming",
      backCol: Color(0xff47A5CB),
    ),
    Number(
      sound: "yes_im_coming.wav",
      jptext: "Hai, ikimasu",
      entext: "Yes,I'm Coming",
      backCol: Color(0xff47A5CB),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Phrases",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w400,
            fontSize: 18,
          ),
        ),
        backgroundColor: Color(0xff533D35),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Item(
            number: phraseItem[index],
            type: "phrases",
            colorback: Color(0xff47A5CB),
          );
        },
        itemCount: phraseItem.length,
      ),
    );
  }
}
