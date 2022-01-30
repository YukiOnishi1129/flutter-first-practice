import 'package:flutter/material.dart';

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('雄貴のFlutter'),
        actions: [
          Icon(Icons.add),
          Icon(Icons.share)
        ]
      ),// appBar: アプリ上部(ヘッダーのようなところ)
      body: Center(
        //child: Column: 縦並びになる
        //child: Row: 横並びになる
        child: Padding(
          padding: const EdgeInsets.all(32.0),
          child: Row(
            //MainAxisAlignment.center: 上下中央よせ
            // MainAxisAlignment.start: 上よせ
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Text('雄貴の説明はとてもわかりやすい'),
              Text('↑わかる'),
              Text('↑しかもカッコ良い')
            ],
          ),
        ),
      ),// body: アプリメインエリア
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),// floatingActionButton: アプリ下のfloatボタン
    );
  }
}
