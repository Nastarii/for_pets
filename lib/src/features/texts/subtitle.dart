import 'package:flutter/material.dart';

class Subtitle extends StatelessWidget {
const Subtitle({ Key? key, required this.text }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context){
    return Container(
      alignment: Alignment.topLeft,
      margin: const EdgeInsets.only(left: 16, top:5, bottom: 5),
      child: Text(
        text,
        style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
      ),
    );
  }
}