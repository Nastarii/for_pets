import 'package:flutter/material.dart';
import 'package:for_pets/src/features/categories/categories.dart';
import 'package:for_pets/src/features/drawer/drawer.dart';
import 'package:for_pets/src/features/header/header.dart';
import 'package:for_pets/src/features/recents/recents.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.title});

  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}


class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const MyDrawer(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          const Header(),
          const Categories(),
          const Recents(),
          TextButton(
              onPressed: () {
                Navigator.pushNamed(context, '/profile');
              },
              child: const Text(
                  'Second Route'
              )
          ),
        ],
        ),
      );
  }
}