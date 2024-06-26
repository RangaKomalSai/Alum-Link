import 'package:flutter/material.dart';

class HomePageContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Welcome Banner
              Text(
                'Explore Alumlink, bridging the past to the future!',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              // Profile Summary
              ListTile(
                leading: CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage("lib/Images/Alumlinklogo.png"),
                ),
                title: Text('John Doe'),
                subtitle: Text('Computer Science Major'),
              ),
              SizedBox(height: 10),
              // Search and Filter Options
              TextField(
                decoration: InputDecoration(
                  labelText: 'Search Alumni',
                  prefixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ),
              SizedBox(height: 20),
              // Featured Alumni
              Text(
                'Featured Alumni',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Container(
                height: 100,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    AlumniCard('Jane Smith', 'Software Engineer'),
                    AlumniCard('Bob Johnson', 'Data Scientist'),
                    // Add more cards
                  ],
                ),
              ),
              SizedBox(height: 20),
              // Upcoming Events
              Text(
                'Upcoming Events',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              EventCard('Alumni Meetup', 'July 20, 2024'),
              EventCard('Tech Talk', 'July 25, 2024'),
              // More sections
            ],
          ),
        ),
      ),
    );
  }
}

class AlumniCard extends StatelessWidget {
  final String name;
  final String jobTitle;

  AlumniCard(this.name, this.jobTitle);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(name, style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
            SizedBox(height: 5),
            Text(jobTitle),
          ],
        ),
      ),
    );
  }
}

class EventCard extends StatelessWidget {
  final String eventName;
  final String eventDate;

  EventCard(this.eventName, this.eventDate);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(eventName),
        subtitle: Text(eventDate),
        trailing: Icon(Icons.arrow_forward),
      ),
    );
  }
}
