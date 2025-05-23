import 'package:flutter/material.dart';
import 'package:tuko/screans/color_Page.dart';
import 'package:tuko/screans/family_Page.dart';
import 'package:tuko/screans/number_page.dart';
import 'package:tuko/screans/phrase_page.dart';
import '../components/Catogry.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff533D35),
        title: Text(
          "Tokue",
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
      body: Container(
        color: Color(0xffFFFDE4),
        child: Column(
          children: [
            Catogry(
              color: Color(0xffFF9F3B),
              text: "Numbers",
              OnTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return NumberPage();
                    },
                  ),
                );
              },
            ),
            Catogry(
              color: Color(0xff5D8B3E),
              text: "FamilyMember",
              OnTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => FamilyPage()),
                );
              },
            ),
            Catogry(
              color: Color(0xff854CAE),
              text: "Colors",
              OnTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ColorPage()),
                );
              },
            ),
            Catogry(
              color: Color(0xff51B0D5),
              text: "Phrases",
              OnTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PhrasePage()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
