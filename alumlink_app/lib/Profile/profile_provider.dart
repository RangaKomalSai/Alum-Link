import 'package:flutter/material.dart';

class ProfileProvider with ChangeNotifier {
  String _name = 'John Doe';
  String _jobTitle = 'Front-end Developer';

  String get name => _name;
  String get jobTitle => _jobTitle;

  void updateProfile(String newName, String newJobTitle) {
    _name = newName;
    _jobTitle = newJobTitle;
    notifyListeners();
  }
}
