import 'package:flutter/material.dart';

class ContentList extends StatelessWidget {
  // List data untuk setiap item dalam list
  final List<Map<String, dynamic>> contentData = [
    {
      'icon': Icons.school,
      'text': 'Institut Teknologi Nasional Bandung',
    },
    {
      'icon': Icons.call,
      'text': '+62-818-8286-9434',
    },
    {
      'icon': Icons.email,
      'text': 'bayuprangga02@gmail.com',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: contentData.length, 
      itemBuilder: (context, index) {
        return ListTile(
          leading: Icon(contentData[index]['icon']), 
          title: Text(contentData[index]['text']), 
        );
      },
    );
  }
}
