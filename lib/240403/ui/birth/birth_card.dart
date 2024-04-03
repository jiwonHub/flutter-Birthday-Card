import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class MyBirthCard extends StatefulWidget {
  const MyBirthCard({super.key});

  @override
  State<MyBirthCard> createState() => _MyBirthCardState();
}

class _MyBirthCardState extends State<MyBirthCard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(fit: StackFit.expand, children: [
        Image.asset(
          'assets/birth.jpg',
        ),
        Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: 40),
              Text(
                'Happy Birthday Sam!',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                ),
              ),
              Text('-from Emma'),
              SizedBox(height: 20),
              Expanded(
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Lottie.asset('assets/lottie.json'),
                ),
              ),
              SizedBox(height: 40),
            ],
          ),
        ),
      ]),
    );
  }
}
