// lib/Content/directorypage.dart

import 'package:flutter/material.dart';
import 'package:alumlink_app/models/alumni_model.dart';
import 'AlumniProfile.dart';

class DirectoryPage extends StatelessWidget {
  final List<Alumnus> alumni = [
    Alumnus(name: 'Alice Smith', jobTitle: 'Software Engineer at Google'),
    Alumnus(name: 'Bob Johnson', jobTitle: 'Data Scientist at Facebook'),
    Alumnus(name: 'Carol Williams', jobTitle: 'Product Manager at Amazon'),
    Alumnus(name: 'David Brown', jobTitle: 'UX Designer at Apple'),
    Alumnus(name: 'Eva Davis', jobTitle: 'Front-end Developer at Microsoft'),
    // Add more alumni as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[50],
      appBar: AppBar(
        title: Text('Alumni Directory',
        style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold , fontFamily: 'MyFont2'),),
        backgroundColor: Colors.blue[200],
      ),
      body: ListView.builder(
        itemCount: alumni.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(alumni[index].name),
            subtitle: Text(alumni[index].jobTitle),
            leading: CircleAvatar(
              child: Text(alumni[index].name[0]), // Display the first letter of the name
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => AlumnusDetailPage(alumnus: alumni[index]),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
