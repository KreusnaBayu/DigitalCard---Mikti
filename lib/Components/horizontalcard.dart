import 'package:april26/Components/List.dart';
import 'package:april26/Components/background.dart';
import 'package:april26/Components/card.dart';
import 'package:april26/const/color.dart';
import 'package:flutter/material.dart';

class HorizontalCard extends StatefulWidget {
  const HorizontalCard({super.key});

  @override
  State<HorizontalCard> createState() => _HorizontalCardState();
}

class _HorizontalCardState extends State<HorizontalCard> {
  @override
Widget build(BuildContext context) {
  return MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
            gradient: BackgroundHorizontal().buildBackgroundGradient(),
          ),
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20), // Jarak dari atas
              Text(
                'Kreusna Bayu P.W',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 10), // Ubah jarak antara judul dan teks Student
              Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 8.0), // Tambahkan padding ke teks Student
                          child: Text(
                            "Student",
                            style: TextStyle(
                              fontSize: 20,
                              color: CustomColors.Text1,
                            ),
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
                  SizedBox(width: 20), // Jarak antara teks dan gambar
                  CircleAvatar(
                    radius: 70,
                    backgroundImage: AssetImage('assets/bayu.png'),
                    backgroundColor: CustomColors.BG2,
                  ),
                ],
              ),
              SizedBox(height: 50), // Jarak antara gambar dan deskripsi
              AboutMeCard(),
              SizedBox(height: 20), // Jarak antara AboutMeCard dan ContentList
              SizedBox(
                height: 200,
                child: ContentList(),
              ),
              SizedBox(height: 20), // Jarak dari bawah
            ],
          ),
        ),
      ),
    ),
  );
}
}