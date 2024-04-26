import 'package:flutter/material.dart';

class HorizontalCard extends StatefulWidget {
  const HorizontalCard({super.key});

  @override
  State<HorizontalCard> createState() => _HorizontalCardState();
}

class _HorizontalCardState extends State<HorizontalCard> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 600,
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          border: Border.all(),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          children: [
            CircleAvatar(
              radius: 50,
              backgroundImage: NetworkImage(
                  'https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.shutterstock.com%2Fid%2Fsearch%2Forang-jawa&psig=AOvVaw0g3FT2kXnZ6x-MX5-_CFmp&ust=1714226752270000&source=images&cd=vfe&opi=89978449&ved=0CBIQjRxqFwoTCKjv3LSG4IUDFQAAAAAdAAAAABAE'),
            ),
            SizedBox(width: 20),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Nama',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Text('Jabatan'),
                  Text('Nomor HP/Telp'),
                  Text('Email'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
