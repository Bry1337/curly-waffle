import 'package:flutter/material.dart';
import 'package:sample_flutter_project/question.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "Bryan's Sample App",
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  var _questionIndex = 0;

  void answerQuestion(){
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'what\'s your favourite color?',
      'what\'s your favourite animal',
    ];
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.green,
        primaryColor: const Color(0xFF1B5E20),
        accentColor: const Color(0xFF43A047),
        canvasColor: const Color(0xFFfafafa),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Bryan's Sample Flutter App"),
        ),
        body: Column(
          children: [
            Question(questions[_questionIndex]),
            RaisedButton(
              child: Text('Answer 1'),
              onPressed: answerQuestion,
            ),
            RaisedButton(
              child: Text('Answer 2'),
              onPressed: (){
                print('Answer 2 Chosen!');
              },
            ),
            RaisedButton(
              child: Text('Answer 3'),
              onPressed: (){
                print('Answer 3 Chosen!');
              },
            ),
          ],
        ),
      ),
    );
  }
}
