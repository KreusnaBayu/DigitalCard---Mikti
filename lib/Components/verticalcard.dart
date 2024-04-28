import 'package:april26/Components/List.dart';
import 'package:april26/Components/background.dart';
import 'package:april26/Components/card.dart';
import 'package:april26/const/color.dart';
import 'package:flutter/material.dart';

class Portrait extends StatefulWidget {
  const Portrait({super.key});

  @override
  State<Portrait> createState() => _PortraitState();
}

class _PortraitState extends State<Portrait> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                gradient: BackgroundVertikal().buildBackgroundGradient(),
              ),
            ),
            Positioned(
              top: MediaQuery.of(context).size.height * 0.08,
              left: 20,
              child: Container(
                padding: EdgeInsets.all(20),
                child: Text(
                  'Kreusna Bayu P.W',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Positioned(
              top: MediaQuery.of(context).size.height * 0.2,
              right: 4,
              child: CircleAvatar(
                radius: 90,
                backgroundImage: AssetImage('assets/bayu.png'),
                backgroundColor: CustomColors.BG2,
              ),
            ),
            Positioned(
              top: MediaQuery.of(context).size.height * 0.18,
              left: 20, 
              child: Container(
                padding: EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Student",
                      style: TextStyle(
                        fontSize: 20,
                        color: CustomColors.Text1,
                      ),
                    ),
                    Text(
                      "Flutter Developer",
                      style: TextStyle(
                        fontSize: 20,
                        color: CustomColors.Text1,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              top: MediaQuery.of(context).size.height *
                  0.37, 
              left: 20,
              right: 20,
              child: AboutMeCard(),
            ),
            Positioned(
              bottom: 20, 
              left: 0,
              right: 0,
              child: SizedBox(
                height: 200, 
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 20), 
                  child: ContentList(), 
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
