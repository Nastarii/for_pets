import 'package:flutter/material.dart';
import 'package:for_pets/src/features/texts/subtitle.dart';

class Recents extends StatelessWidget {
const Recents({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return const Column(
      children: [
        Subtitle(text: 'Recentes')
      ],
    );
  }
}