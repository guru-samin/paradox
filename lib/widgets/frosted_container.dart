import 'dart:ui';

import 'package:flutter/material.dart';

class ContainerWithFrostedGlassEffect extends StatelessWidget {
  const ContainerWithFrostedGlassEffect({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.topCenter,
      children: [
        Container(
          height: MediaQuery.of(context).size.height * 0.20,
          width: MediaQuery.of(context).size.width * 0.8,
          child: ClipRRect(
              borderRadius: BorderRadius.circular(5),
              child: Image.asset(
                'assets/nature.jpg',
                fit: BoxFit.cover,
              )),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 15),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(5),
            child: new BackdropFilter(
              filter: new ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
              child: new Container(
                height: MediaQuery.of(context).size.height * 1 / 8,
                color: Colors.white12,
                width: MediaQuery.of(context).size.width * 0.6,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 4.0),
                      child: Text(
                        'Every inspiration from nature',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 14),
                      ),
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Text(
                      'Get started using our services with our 30-day free trial.',
                      style: TextStyle(fontSize: 8),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    OutlinedButton(
                      style: OutlinedButton.styleFrom(
                          backgroundColor: Colors.black),
                      onPressed: () {},
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Text(
                          'Try it now',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 10),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
