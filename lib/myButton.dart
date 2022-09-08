import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String answername;
  final VoidCallback myfunction;
  MyButton({required this.answername, required this.myfunction});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ElevatedButton(
        child: Text(answername),
        onPressed: myfunction,
      ),
      width: double.infinity,
      padding: EdgeInsets.all(10),
      color: Colors.greenAccent,
    );
  }
}
