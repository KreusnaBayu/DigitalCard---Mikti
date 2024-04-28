import 'package:april26/Components/horizontalcard.dart';
import 'package:april26/Components/verticalcard.dart';
import 'package:flutter/material.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: LayoutBuilder(
            builder: (context, constraints) {
              if (constraints.maxWidth > 600) {
                
                return HorizontalCard();
              } else {
                
                return Portrait();
              }
            },
          ),
        ),
      ),
    );
  }
}