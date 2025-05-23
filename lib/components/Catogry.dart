import "package:flutter/material.dart";

class Catogry extends StatelessWidget {
  Catogry({super.key, this.color, this.text, this.OnTap});
  Color? color;
  String? text;
  Function()? OnTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: OnTap,
      child: Container(
        padding: EdgeInsets.only(left: 10),
        width: double.infinity,
        height: 60,
        color: color,
        alignment: Alignment.centerLeft,
        child: Text(
          text!,
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.w300,
          ),
        ),
      ),
    );
  }
}
