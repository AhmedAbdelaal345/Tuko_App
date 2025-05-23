import 'package:flutter/material.dart';
import 'package:tuko/components/number_container.dart';
import 'package:tuko/models/number.dart';

class Item extends StatelessWidget {
  const Item({super.key, required this.number, required this.type,required this.colorback});
  final Number number;
  final String type;
 final Color ?colorback;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        NumberContainer(
          backCol: number.backCol,
          sound: number.sound,
          img: number.img,
          text1: number.jptext,
          text2: number.entext,
          type: type,
          backColImg:colorback??Color(0xffFEFDE4) ,
        ),
      ],
    );
  }
}
