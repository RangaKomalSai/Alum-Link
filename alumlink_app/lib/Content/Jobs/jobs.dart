// lib/Content/jobs.dart

import 'package:flutter/material.dart';
import 'package:alumlink_app/models/jobs_model.dart';
import 'package:alumlink_app/Content/Jobs/job_detail.dart';

class JobsPage extends StatelessWidget {
  final List<Job> jobs = [
    Job(
      title: 'Software Engineer',
      company: 'Google',
      location: 'Mountain View, CA',
      description: 'Develop and maintain software applications.',
    ),
    Job(
      title: 'Data Scientist',
      company: 'Facebook',
      location: 'Menlo Park, CA',
      description: 'Analyze and interpret complex data sets.',
    ),
    Job(
      title: 'Product Manager',
      company: 'Amazon',
      location: 'Seattle, WA',
      description: 'Manage the development and launch of new products.',
    ),
    Job(
      title: 'UX Designer',
      company: 'Apple',
      location: 'Cupertino, CA',
      description: 'Design user interfaces and improve user experience.',
    ),
    Job(
      title: 'Front-end Developer',
      company: 'Microsoft',
      location: 'Redmond, WA',
      description: 'Build and maintain the front-end of web applications.',
    ),
    // Add more job postings as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Job Postings'),
        backgroundColor: Colors.blue[200],
      ),
      body: ListView.builder(
        itemCount: jobs.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(jobs[index].title),
            subtitle: Text('${jobs[index].company} - ${jobs[index].location}'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => JobDetailPage(job: jobs[index]),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
