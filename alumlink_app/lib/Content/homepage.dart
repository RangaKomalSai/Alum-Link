import 'package:flutter/material.dart';
import 'package:alumlink_app/Events/event_card.dart';
import 'package:alumlink_app/Events/event_page.dart';
import 'package:alumlink_app/Others_profile/alumprofile.dart'; // Import AlumniCard widget
import 'package:alumlink_app/Content/chatbot.dart'; // Import your chatbot page

class HomePageContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[50],
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Welcome Banner
              Text(
                'Explore Alumlink, bridging the past to the future!',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, fontFamily: 'MyFont2'),
              ),
              SizedBox(height: 10),
              // Profile Summary
              ListTile(
                leading: Icon(Icons.account_circle, size: 50),
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
              EventCard(
                'Alumni Meetup', 'July 20, 2024',
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => EventPage(
                        eventName: "Alumni Meetup",
                        eventLocation: 'Tech Hub, Downtown', // Provide actual data
                        eventDate: "July 20, 2024",
                        eventTime: '10:00 AM - 2:00 PM', // Provide actual data
                        eventDescription: 'Join us for a Alumni meetup', // Provide actual data
                      ),
                    ),
                  );
                },
              ),
              EventCard(
                'Tech Talk', 'July 25, 2024',
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => EventPage(
                        eventName: "Tech Talk",
                        eventLocation: 'Tech Hub, Downtown', // Provide actual data
                        eventDate: "July 25, 2024",
                        eventTime: '10:00 AM - 2:00 PM', // Provide actual data
                        eventDescription: 'Join us for a Tech Talk', // Provide actual data
                      ),
                    ),
                  );
                },
              ),
              // More sections
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => ChatbotPage()),
          );
        },
        child: Icon(Icons.chat),
        backgroundColor: Colors.blue,
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
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ProfilePage(
                name: name,
                Major: 'Computer Science', // Replace with actual data
                degree: 'Bachelor of Science', // Replace with actual data
                GraduationDate: 'May 2020', // Replace with actual data
                email: 'johndoe@example.com', // Replace with actual data
                linkedin: 'linkedin.com/in/johndoe', // Replace with actual data
                phone: '+1 123-456-7890', // Replace with actual data
                location: 'City, Country', // Replace with actual data
                University: 'University of Example', // Replace with actual data
              ),
            ),
          );
        },
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
      ),
    );
  }
}
