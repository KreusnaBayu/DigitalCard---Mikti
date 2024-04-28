import 'package:flutter/material.dart';

class AboutMeCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(20),
      color: Colors.white.withOpacity(1),
      child: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "About Me",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Text(
              "A 6th semester student in the Informatics study program with passion and expertise in web and mobile application development. Have a deep understanding of programming concepts, user interface design, and database management. Actively following the latest technological developments and committed to continuing to learn and develop.",
              style: TextStyle(
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
