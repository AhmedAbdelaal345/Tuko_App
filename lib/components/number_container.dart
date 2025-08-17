import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class NumberContainer extends StatelessWidget {
  NumberContainer({
    super.key,
    this.backCol,
    this.sound,
    this.img,
    this.text1,
    this.text2,
    this.backColImg,
    required this.type,
  });
  String? text1;
  String? text2;
  String? img;
  String? sound;
  Color? backCol;
  Color? backColImg;
  final String type;
  final AudioPlayer _audioPlayer = AudioPlayer();
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: double.infinity,
      color: backCol!,
      child: Row(
        children: [
          Container(
            color: backColImg ?? Color(0xffFEFDE4),
            child: img != null ? Image.asset(img!) : SizedBox(),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  text1!,
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
                Text(
                  text2!,
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ],
            ),
          ),
          Spacer(flex: 1),
          IconButton(
            onPressed: () async {
              try {
                // Method 1: Using AssetSource (recommended)
                await _audioPlayer.play(AssetSource('sounds/$type/$sound'));

                // Alternative Method 2: If you prefer the old-style path
                // await _audioPlayer.play(AssetSource('assets/sounds/$type/$sound'));
              } catch (e) {
                print('Error playing audio: $e');
              }
            },
            icon: Icon(Icons.play_arrow, color: Colors.white, size: 30),
          ),
        ],
      ),
    );
  }
}
