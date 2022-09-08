import 'package:flutter/material.dart';

class Mathan extends StatelessWidget {
  final String name;
  Mathan(this.name);

 
  Widget build(BuildContext context) {
    return Container(child:Text(name, style: TextStyle(fontSize: 23),),
    width: double.infinity,
    padding:const EdgeInsets.all(20));
  }
}
