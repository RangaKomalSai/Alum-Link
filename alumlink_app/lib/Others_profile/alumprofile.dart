import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  final String name;
  final String Major;
  final String degree;
  final String GraduationDate;
  final String email;
  final String linkedin;
  final String phone;
  final String location;
  final String University;

  ProfilePage({
    required this.name,
    required this.Major,
    required this.degree,
    required this.GraduationDate,
    required this.email,
    required this.linkedin,
    required this.phone,
    required this.location,
    required this.University,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[50],
      appBar: AppBar(
        title: Text(name + '\'s Profile',
        style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold , fontFamily: 'MyFont2'),),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Profile Picture and Name
            Center(
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage('lib/Images/SoftwareDevelopment.png'), // Replace with actual image path
                  ),
                  SizedBox(height: 10),
                  Text(
                    name,
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    Major,
                    style: TextStyle(fontSize: 18, color: Colors.grey),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            // Education Details
            Text(
              'Education',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            ListTile(
              leading: Icon(Icons.school),
              title: Text(degree + ' in ' + Major),
              subtitle: Text(University),
            ),
            ListTile(
              leading: Icon(Icons.date_range),
              title: Text('Graduated on ' + GraduationDate),
            ),
            SizedBox(height: 20),
            // Contact Information
            Text(
              'Contact Information',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            ListTile(
              leading: Icon(Icons.email),
              title: Text(email),
            ),
            ListTile(
              leading: Icon(Icons.dataset_linked_rounded),
              title: Text(linkedin),
            ),
            ListTile(
              leading: Icon(Icons.phone),
              title: Text(phone),
            ),
            ListTile(
              leading: Icon(Icons.location_on),
              title: Text(location),
            ),
          ],
        ),
      ),
    );
  }
}
