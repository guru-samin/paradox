import 'package:flutter/material.dart';

//Predefining the HeaderText and its style to minimize boilerplate code.
//This widget also contains the necessary padding required in the design.
class HeaderText extends StatelessWidget {
  final String text;
  HeaderText(this.text);
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          text,
          style: TextStyle(
              color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 8),
        Container(height: 3, width: 50, color: Colors.white),
        SizedBox(height: 20)
      ],
    );
  }
}

//Predefining the MenuText and its style to minimize boilerplate code.
//This widget also contains the necessary padding required in the design.
class MenuText extends StatelessWidget {
  final String text;
  final Function function;
  MenuText({required this.text,required this.function});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap:()=> function,
          child: Text(
            text,
            style: TextStyle(
                color: Colors.white, fontSize: 15, fontWeight: FontWeight.w100),
          ),
        ),
        SizedBox(
          height: 7,
        )
      ],
    );
  }
}