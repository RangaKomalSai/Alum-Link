import 'package:flutter/material.dart';
import 'alumnus.dart';

class aero extends StatelessWidget {
  final List<Alumnus> alumni = [
    Alumnus(name: 'Alice Smith', jobTitle: 'Software Engineer at Google'),
    Alumnus(name: 'Bob Johnson', jobTitle: 'Data Scientist at Facebook'),
    Alumnus(name: 'Carol Williams', jobTitle: 'Product Manager at Amazon'),
    Alumnus(name: 'David Brown', jobTitle: 'UX Designer at Apple'),
    Alumnus(name: 'Eva Davis', jobTitle: 'Front-end Developer at Microsoft'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Aerospace Core',
        style: TextStyle(
            fontSize: 24, // Customize the font size
            fontWeight: FontWeight.bold, // Customize the font weight
            fontFamily: 'MyFont2', // Replace with your desired font family
            color: Colors.white, // Customize the text color
          ),),
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
          );
        },
      ),
    );
  }
}
