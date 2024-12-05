// lib/Content/mentor_detail.dart

import 'package:flutter/material.dart';
import 'package:alumlink_app/models/mentor_model.dart';

class MentorDetailPage extends StatelessWidget {
  final Mentor mentor;

  MentorDetailPage({required this.mentor});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[50],
      appBar: AppBar(
        title: Text('Mentor Details',
        style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold , fontFamily: 'MyFont2'),),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              mentor.name,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              mentor.expertise,
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 16),
            Text(
              'Bio',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              mentor.bio,
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
