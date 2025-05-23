import 'package:flutter/material.dart';
import 'package:tuko/components/item.dart';
import 'package:tuko/models/number.dart';

class FamilyPage extends StatelessWidget {
   FamilyPage({super.key});
  final List<Number> family = [
     Number(
      sound: "father.wav",
      img: "assets/images/family_members/family_father.png",
      jptext: "Chichioya",
      entext: "father",
      backCol: Color(0xff5D8B3E),
    ),
     Number(
      sound: "daughter.wav",
      img: "assets/images/family_members/family_daughter.png",
      jptext: "Musume",
      entext: "daughter",
      backCol: Color(0xff5D8B3E),
    ),

     Number(
      sound: "grand father.wav",
      img: "assets/images/family_members/family_grandfather.png",
      jptext: "Ojisan",
      entext: "Grand Father",
      backCol: Color(0xff5D8B3E),
    ),
     Number(
      sound: "mother.wav",
      img: "assets/images/family_members/family_mother.png",
      jptext: "Hahaoya",
      entext: "Mother",

      backCol: Color(0xff5D8B3E),
    ),
     Number(
      sound: "grand mother.wav",
      img: "assets/images/family_members/family_grandmother.png",
      jptext: "Sobo",
      entext: "Grand Mother",

      backCol: Color(0xff5D8B3E),
    ),
     Number(
      sound: "older bother.wav",
      img: "assets/images/family_members/family_older_brother.png",
      jptext: "Nisan",

      entext: "Older Borther",
      backCol: Color(0xff5D8B3E),
    ),
     Number(
      sound: "older sister.wav",
      img: "assets/images/family_members/family_older_sister.png",
      jptext: "Ane",
      entext: "Older Sister",

      backCol: Color(0xff5D8B3E),
    ),
     Number(
      sound: "son.wav",
      img: "assets/images/family_members/family_son.png",
      jptext: "Musuko",
      entext: "Son",

      backCol: Color(0xff5D8B3E),
    ),
     Number(
      sound: "younger brohter.wav",
      img: "assets/images/family_members/family_younger_brother.png",
      jptext: "Musuko",
      entext: "Younger Brother",

      backCol: Color(0xff5D8B3E),
    ),
    Number(
      sound: "younger sister.wav",
      img: "assets/images/family_members/family_younger_brother.png",
      jptext: "Musuko",
      entext: "Younger Sister",

      backCol: Color(0xff5D8B3E),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Familay",
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
          return Item(
            number: family[index],
            type: "family_members",
            colorback: Color(0xffFEFDE4),
          );
        },
        itemCount: family.length,
      ),
    );
  }
}
