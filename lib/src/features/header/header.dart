import 'package:flutter/material.dart';
import 'location/geolocation.dart';

class Header extends StatefulWidget {
  const Header({ Key? key }) : super(key: key);

  @override
  State<Header> createState() => _HeaderState();
}

class _HeaderState extends State<Header> {

  void _openDrawer() {
    Scaffold.of(context).openDrawer();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        padding: const EdgeInsets.all(16.0), // Adjust the value as needed
        child:Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
          IconButton(
              icon: const Icon(Icons.menu),
              onPressed: _openDrawer,
            ),
          const Row(children: [
            LocationDisplay(),
            Icon(
              Icons.expand_more,
              color: Colors.black54,
              size: 24.0,
              semanticLabel: 'Expand More',
            )
          ]),
          const Text(
            ''
          )
        ],)
      )
    );
  }
}