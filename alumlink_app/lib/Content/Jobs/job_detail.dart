// lib/Content/job_detail.dart

import 'package:flutter/material.dart';
import 'package:alumlink_app/models/jobs_model.dart';

class JobDetailPage extends StatelessWidget {
  final Job job;

  JobDetailPage({required this.job});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[50],
      appBar: AppBar(
        title: Text('Job Details',
        style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold , fontFamily: 'MyFont2'),),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              job.title,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              job.company,
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 8),
            Text(
              job.location,
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 16),
            Text(
              'Job Description',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              job.description,
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
