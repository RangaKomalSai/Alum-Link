// lib/Fields/alumnus_detail.dart

import 'package:flutter/material.dart';
import 'package:alumlink_app/models/alumni_model.dart';


class AlumnusDetailPage extends StatelessWidget {
  final Alumnus alumnus;

  AlumnusDetailPage({required this.alumnus});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[50],
      appBar: AppBar(
        title: Text('${alumnus.name} Details',
        style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold , fontFamily: 'MyFont2'),),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            CircleAvatar(
              radius: 50,
              child: Text(alumnus.name[0]),
            ),
            SizedBox(height: 16),
            Text(
              'Name: ${alumnus.name}',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              'Job Title: ${alumnus.jobTitle}',
              style: TextStyle(fontSize: 18),
            ),
            // Add more details as needed
          ],
        ),
      ),
    );
  }
}
