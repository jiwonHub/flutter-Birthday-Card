import 'package:flutter/material.dart';

import 'business.dart';

void main() {
  runApp(const Business());
}

class Business extends StatelessWidget {
  const Business({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Business',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepOrange),
        useMaterial3: true,
      ),
      home: const MyBusiness(),
    );
  }
}
