import 'package:flutter/material.dart';

// CamelCase
// snake_case
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int count = 0;
  String _text = '';
  final _textController = TextEditingController();

  @override
  void dispose() {
    _textController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('홈'),
        backgroundColor: Colors.deepPurple,
      ),
      body: Center(
        child: SingleChildScrollView( // ScrollView
          child: Column(
            // Row는 Horizontal, Column은 vertical
            // 메인 방향 정렬 (기본적으로 왼쪽에서 오른쪽으로, 위에서 아래로 가는 방향)
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                color: Colors.red,
                width: 100,
                height: 100,
              ),
              SizedBox(height: 30),
              Text(
                '숫자',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 40,
                ),
              ),
              Text(
                '$count',
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 70,
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  print('ElevatedButton');
                },
                child: Text('ElevatedButton'),
              ),
              TextButton(
                onPressed: () {},
                child: Text('TextButton'),
              ),
              OutlinedButton(
                onPressed: () {}, // SetOnCLickListener
                child: Text('TextButton'), // Text
              ),
              Row(
                children: [
                  Expanded( // 영역을 채우는 느낌
                    flex: 3,
                    child: TextField(
                      // EditText
                      controller: _textController,
                      decoration: InputDecoration(
                        labelText: '글자', // Hint
                        border: OutlineInputBorder(), // Border
                      ),
                      onChanged: (text) {
                        // ChangeListener
                        _text = text;
                        print(text);
                      },
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: ElevatedButton(
                      onPressed: () {
                        print(_textController.text);
                      },
                      child: Text('login'),
                    ),
                  ),
                ],
              ),
              Image.network(
                // 인터넷 상 그림 받아오기
                'https://fastly.picsum.photos/id/11/2500/1667.jpg?hmac=xxjFJtAPgshYkysU_aqx2sZir-kIOjNR9vx0te7GycQ',
                width: 100,
                height: 100,
                fit: BoxFit.cover,
              ),
              Container(
                color: Colors.red,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset(
                    // 파일에 저장된 그림 가져오기
                    'assets/picture.png',
                    width: 100,
                    height: 100,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // 클릭 시 count 증가
          setState(() {
            // 화면 갱신
            count++;
          });
        },
        child: Icon(Icons.add),
      ),
    );
  }
}

