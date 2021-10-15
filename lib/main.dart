// ignore_for_file: unnecessary_string_escapes

import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';
void main() {
  runApp( MyApp());
}

class MyApp extends StatefulWidget {
   MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    
  }

  @override
  Widget build(BuildContext context) {
    var question = [
      "Whats\'s your favourite animal ?",
      "What\'s your favourite color ? "
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Demo"),
        ),
        body: Column(
          children: [
            Question(question[_questionIndex]),

            const SizedBox(
              height: 10,
            ),


           Answer(_answerQuestion),

           Answer(_answerQuestion),

           Answer(_answerQuestion),

            
             
          ],
        ),
      ),
    );
  }
}
