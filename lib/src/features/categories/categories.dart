import 'package:flutter/material.dart';
import 'package:for_pets/src/features/categories/categories_card.dart';
import 'package:for_pets/src/features/texts/subtitle.dart';

class Categories extends StatelessWidget {
const Categories({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: <Widget>[
        Subtitle(text: 'Categorias'),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            CategoriesCard(content: 'Dog'),
            CategoriesCard(content: 'Cat'),
            CategoriesCard(content: 'Others'),
          ],
        ),
      ],
    );
  }
}