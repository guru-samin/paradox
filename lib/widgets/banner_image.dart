import 'package:flutter/material.dart';

class BannerImage extends StatelessWidget {
  const BannerImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 5,
        ),
        Stack(
          alignment: AlignmentDirectional.topCenter,
          children: [
            Container(
                height: 70,
                width: MediaQuery.of(context).size.width,
                child: Image.asset('assets/original.jpg', fit: BoxFit.cover)),
            Padding(
              padding: const EdgeInsets.only(top: 8),
              child: Text(
                'Building the future',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
