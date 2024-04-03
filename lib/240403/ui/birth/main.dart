import 'package:flutter/material.dart';

import 'birth_card.dart';

void main() {
  runApp(const BirthCard());
}

class BirthCard extends StatelessWidget {
  const BirthCard({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Birth Card',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyBirthCard(),
    );
  }
}

