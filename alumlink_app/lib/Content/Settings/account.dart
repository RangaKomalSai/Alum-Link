import 'package:flutter/material.dart';

class AccountPage extends StatefulWidget {
  @override
  _AccountPageState createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController linkedDetailsController = TextEditingController();
  List<String> interests = ["AIML", "Mechanical Engineering", "Software Development", "Data Science", "Web Development", "Other"];
  List<String> selectedInterests = [];
  List<String> dropdownValues = [];

  bool _isEditing = false; // Flag to check if editing mode is active

  @override
  void initState() {
    super.initState();
    // Initialize data if available (e.g., from storage or database)
    nameController.text = "John Doe"; // Replace with actual data retrieval logic
    emailController.text = "john.doe@example.com"; // Replace with actual data retrieval logic
    phoneController.text = "1234567890"; // Replace with actual data retrieval logic
    linkedDetailsController.text = "https://linkedin.com/johndoe"; // Replace with actual data retrieval logic
    selectedInterests = ["AIML", "Mechanical Engineering"]; // Replace with actual data retrieval logic
    dropdownValues = List.from(interests);
    dropdownValues.removeWhere((item) => selectedInterests.contains(item));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Account',
          style: TextStyle(
            fontSize: 24, // Set the desired font size
            fontWeight: FontWeight.bold, // Set the desired font weight
            fontFamily: 'MyFont2', // Set the desired font family
            color: Colors.white, // Set the desired text color
          ),
        ),
        backgroundColor: Colors.blue[200],
        actions: [
          IconButton(
            icon: Icon(Icons.edit),
            onPressed: () {
              setState(() {
                _isEditing = true;
                dropdownValues = List.from(interests);
                dropdownValues.removeWhere((item) => selectedInterests.contains(item));
              });
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Account Information',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 20),
              Text(
                'Name',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.grey,
                ),
              ),
              TextFormField(
                controller: nameController,
                enabled: _isEditing,
                decoration: InputDecoration(
                  hintText: 'Enter your name',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 20),
              Text(
                'Email',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.grey,
                ),
              ),
              TextFormField(
                controller: emailController,
                enabled: _isEditing,
                decoration: InputDecoration(
                  hintText: 'Enter your email',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 20),
              Text(
                'Phone Number',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.grey,
                ),
              ),
              TextFormField(
                controller: phoneController,
                enabled: _isEditing,
                decoration: InputDecoration(
                  hintText: 'Enter your phone number',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 20),
              Text(
                'Field(s) of Interest (Select up to 3)',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.grey,
                ),
              ),
              DropdownButtonFormField<String>(
                value: null,
                onChanged: _isEditing
                    ? (String? newValue) {
                        setState(() {
                          if (newValue != null && selectedInterests.length < 3) {
                            selectedInterests.add(newValue);
                            dropdownValues.remove(newValue);
                          }
                        });
                      }
                    : null,
                items: dropdownValues.map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 20),
              Text(
                'Selected Interests: ${selectedInterests.isEmpty ? 'None' : selectedInterests.join(', ')}',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey[700],
                ),
              ),
              SizedBox(height: 20),
              Text(
                'Linked Details',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.grey,
                ),
              ),
              TextFormField(
                controller: linkedDetailsController,
                enabled: _isEditing,
                decoration: InputDecoration(
                  hintText: 'Enter your linked details (e.g., LinkedIn, GitHub)',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: _isEditing
                    ? () {
                        // Implement save functionality here (e.g., update database)
                        setState(() {
                          _isEditing = false;
                          dropdownValues = List.from(interests);
                          dropdownValues.removeWhere((item) => selectedInterests.contains(item));
                        });
                      }
                    : null,
                child: Text('Save'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
