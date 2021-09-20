import 'package:flutter/material.dart';
import 'package:paradox/footer_widgets.dart';
import 'package:paradox/social.dart';

class Footer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      color: Colors.black,
      child: Column(
        children: [
          SizedBox(height: 50),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  HeaderText('Services'),
                  MenuText(
                    text: 'Paradox',
                    function: () {},
                  ),
                  MenuText(text: 'Download', function: () {}),
                  MenuText(text: 'Pricing', function: () {}),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  HeaderText('Information'),
                  MenuText(text: 'Setup Guide', function: () {}),
                  MenuText(text: 'Features', function: () {}),
                  MenuText(text: 'Tutorial', function: () {}),
                  MenuText(text: 'Discord', function: () {}),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  HeaderText('Company'),
                  MenuText(text: 'Career', function: () {}),
                  MenuText(text: 'About Us', function: () {}),
                  MenuText(text: 'Privacy Policy', function: () {}),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  HeaderText('Follow Us'),
                  SocialIcons(),
                ],
              )
            ],
          ),
          SizedBox(height: 50),
        ],
      ),
    );
  }
}
