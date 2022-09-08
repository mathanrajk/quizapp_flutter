import 'package:flutter/material.dart';
import './mathan.dart';
import './myButton.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  MyAppState createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  int questionIndex = 0;
  int marks = 0;
  void next(int mark) {
    marks += mark;
    setState(() {
      questionIndex += 1;
    });
  }

  void restart() {
    setState(() {
      questionIndex = 0;
      marks = 0;
    });
  }

  final questions = [
    {
      "question": "what is your name ?",
      "answer": [
        {"text": "mathan", "mark": 10},
        {"text": "raja", "mark": 0},
        {"text": "velu", "mark": 0},
        {"text": "none of these", "mark": 0},
      ]
    },
    {
      "question": "what is mathan qualifiction ?",
      "answer": [
        {
          "text": "MA",
          "mark": 0,
        },
        {
          "text": "BE",
          "mark": 10,
        },
        {
          "text": "BA",
          "mark": 0,
        },
        {
          "text": "none of these",
          "mark": 0,
        },
      ]
    },
    {
      "question": "mathan have which brand  laptop ?",
      "answer": [
        {"text": "DELL", "mark": 0},
        {"text": "lenova", "mark": 0},
        {"text": "HP", "mark": 10},
        {"text": "Mac", "mark": 0},
      ]
    }
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: const Text("Quiz App"),
              backgroundColor: Colors.blue,
            ),
            body: (questionIndex < questions.length)
                ? Column(children: [
                    Mathan(questions[questionIndex]["question"] as String),
                    ...(questions[questionIndex]["answer"]
                            as List<Map<String, Object>>)
                        .map((e) {
                      return MyButton(
                        answername: e["text"] as String,
                        myfunction: () => next(e["mark"] as int),
                      );
                    }).toList(),
                  ])
                : Column(
                    children: [
                      Container(
                        child: Column(
                          children: [
                            Text("you mark:"),
                            Text(marks.toString()),
                            ElevatedButton(
                                onPressed: restart, child: Text("Restarted"))
                          ],
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                        ),
                        width: double.infinity,
                        color: Colors.pinkAccent,
                        height: 600,
                      ),
                    ],
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                  )));
  }
}
