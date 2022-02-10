import 'package:flutter/material.dart';
import 'package:flutter_app/next_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  // final myFocusNode = FocusNode();

  String name = '';

  final myController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('KBOYのFlutter大学'),
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                hintText: '名前',
              ),
              onChanged: (text) {
              //  TODO: ここで取得したtextを使う
                name = text;
              }
            ),
            TextField(
              controller: myController,
              decoration: InputDecoration(
                hintText: '趣味',
              )
              // focusNode: myFocusNode,
            ),
            ElevatedButton(
              child: Text('新規登録'),
              onPressed: () {
              //  TODO: 新規登録
                final hobbyText = myController.text;
              //   myFocusNode.requestFocus();
              },
            ),
          ]
        )
      )
    );
  }
}
