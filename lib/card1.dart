import 'package:flutter/material.dart';

class Card1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 30, bottom: 60, left: 100, right: 100),
      width: MediaQuery.of(context).size.width * 0.9,
      child: Card(
        elevation: 5,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                top: 20,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      Image.asset(
                        'assets/Path 26.png',
                        height: 35,
                      ),
                      Image.asset(
                        'assets/right arrow.png',
                        height: 30,
                      )
                    ],
                  ),
                  SizedBox(width: 10),
                  Text(
                    'Quick Guide',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                        letterSpacing: 2),
                  ),
                  SizedBox(width: 10),
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      Image.asset(
                        'assets/Path 27.png',
                        height: 35,
                      ),
                      Image.asset(
                        'assets/Ellipse 13.png',
                        height: 30,
                      )
                    ],
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 80, vertical: 20),
              child: Text(
                'To learn how to use paradox, we have some quick guides for you to get started. \nAnd for more advanced and developer-focused guides we have provided \nsome sample videos and documentation.',
                style: TextStyle(height: 2, fontSize: 20),
                textAlign: TextAlign.center,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 80, vertical: 20),
              child: Text(
                'Learn how to use the software and take the advantage of \nthe powerful parallel computing.',
                style: TextStyle(fontSize: 20, height: 2), textAlign: TextAlign.center,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0, bottom: 40),
              child: InkWell(
                onTap: () {},
                child: Container(
                  alignment: Alignment.center,
                  width: MediaQuery.of(context).size.width * 1 / 4,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xff09CCBD),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      'Get Started',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.white),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
