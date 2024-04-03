import 'package:flutter/material.dart';

class MyBusiness extends StatefulWidget {
  const MyBusiness({super.key});

  @override
  State<MyBusiness> createState() => _MyBusinessState();
}

class _MyBusinessState extends State<MyBusiness> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.person,
                    size: 50,
                    color: Colors.blue,
                  ),
                  Text(
                    '최지원',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 50,
                    ),
                  ),
                  Text(
                    '비즈니스 과제',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 30,
                    ),
                  )
                ],
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.phone,
                        size: 50,
                        color: Colors.blue,
                      ),
                      SizedBox(width: 20),
                      Text(
                        '010-2775-9528',
                        style: TextStyle(
                          fontSize: 30,
                          color: Colors.black,
                        ),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.people,
                        size: 50,
                        color: Colors.blue,
                      ),
                      SizedBox(width: 20),
                      Text(
                        '@hi_ji_one',
                        style: TextStyle(
                          fontSize: 30,
                          color: Colors.black,
                        ),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.email,
                        size: 50,
                        color: Colors.blue,
                      ),
                      SizedBox(width: 20),
                      Text(
                        'jiwon30931@gmail.com',
                        style: TextStyle(
                          fontSize: 30,
                          color: Colors.black,
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 30),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
