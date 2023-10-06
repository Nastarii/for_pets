import 'package:flutter/material.dart';

class CategoriesCard extends StatelessWidget {
  const CategoriesCard({ Key? key, required this.content }) : super(key: key);

  final String content;
  
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image(image: AssetImage('assets/categories/$content.jpg')),
        Text(
          content,
          style: const TextStyle(fontWeight: FontWeight.w400),
        )
      ],
    );
  }
}
