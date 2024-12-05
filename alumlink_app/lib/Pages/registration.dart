import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class RegistrationPage extends StatefulWidget {
  @override
  _RegistrationPageState createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final FirebaseAuth _auth = FirebaseAuth.instance;

  void _register() async {
    final email = _emailController.text;
    final password = _passwordController.text;

    try {
      UserCredential userCredential = await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );

      // You can also save the user's name to the Firestore database if needed
      print('User registered: ${userCredential.user?.email}');
      
      // Clear the text fields
      _nameController.clear();
      _emailController.clear();
      _passwordController.clear();

      // Show success message or navigate to another page
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text('Registration Successful'),
      ));
    } catch (e) {
      print('Error: $e');
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text('Registration Failed'),
      ));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[50],
      appBar: AppBar(
        title: Text(
          'User Registration',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, fontFamily: 'MyFont2'),
        ),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Card(
          elevation: 8,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                TextField(
                  controller: _nameController,
                  decoration: InputDecoration(
                    labelText: 'Name',
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 20),
                TextField(
                  controller: _emailController,
                  decoration: InputDecoration(
                    labelText: 'Email',
                    border: OutlineInputBorder(),
                  ),
                  keyboardType: TextInputType.emailAddress,
                ),
                SizedBox(height: 20),
                TextField(
                  controller: _passwordController,
                  decoration: InputDecoration(
                    labelText: 'Password',
                    border: OutlineInputBorder(),
                  ),
                  obscureText: true,
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: _register,
                  child: Text('Register'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue[300],
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    padding: EdgeInsets.symmetric(
                      horizontal: 50,
                      vertical: 15,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
