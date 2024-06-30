// lib/Content/mentorship.dart

import 'package:flutter/material.dart';
import 'package:alumlink_app/models/mentor_model.dart';
import 'package:alumlink_app/Content/Mentor/mentor_detail.dart';

class MentorshipPage extends StatelessWidget {
  final List<Mentor> mentors = [
    Mentor(
      name: 'Alice Smith',
      expertise: 'Software Engineering',
      bio: 'Experienced software engineer with a passion for mentoring.',
    ),
    Mentor(
      name: 'Bob Johnson',
      expertise: 'Data Science',
      bio: 'Data scientist with expertise in machine learning and AI.',
    ),
    Mentor(
      name: 'Carol Williams',
      expertise: 'Product Management',
      bio: 'Product manager with a background in UX design and development.',
    ),
    Mentor(
      name: 'David Brown',
      expertise: 'UX Design',
      bio: 'UX designer with experience in both web and mobile applications.',
    ),
    Mentor(
      name: 'Eva Davis',
      expertise: 'Front-end Development',
      bio: 'Front-end developer skilled in creating responsive web apps.',
    ),
    // Add more mentors as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mentorship Program'),
        backgroundColor: Colors.blue[200],
      ),
      body: ListView.builder(
        itemCount: mentors.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(mentors[index].name),
            subtitle: Text(mentors[index].expertise),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => MentorDetailPage(mentor: mentors[index]),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
