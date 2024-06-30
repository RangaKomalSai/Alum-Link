import 'package:flutter/material.dart';
import 'package:alumlink_app/Fields/AIML.dart';
import 'package:alumlink_app/Fields/DS.dart';
import 'package:alumlink_app/Fields/dev.dart';
import 'package:alumlink_app/Fields/cybersec.dart';
import 'package:alumlink_app/Fields/Networking.dart';
import 'package:alumlink_app/Fields/Fin.dart';
import 'package:alumlink_app/Fields/mart.dart';
import 'package:alumlink_app/Fields/mgmt.dart';
import 'package:alumlink_app/Fields/elec.dart';
import 'package:alumlink_app/Fields/mech.dart';
import 'package:alumlink_app/Fields/civil.dart';
import 'package:alumlink_app/Fields/chem.dart';
import 'package:alumlink_app/Fields/aero.dart';
import 'package:alumlink_app/Fields/physics.dart';
import 'package:alumlink_app/Profile/profile.dart';
import 'package:alumlink_app/Content/homepage.dart';
import 'package:alumlink_app/Content/Mentor/Mentorship.dart';
import 'package:alumlink_app/Content/Jobs/jobs.dart';
import 'package:alumlink_app/Content/directorypage.dart';
import 'package:alumlink_app/Content/Settings/settings.dart';
import 'logout.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  static List<Widget> _widgetOptions = <Widget>[
    HomePageContent(),
    MentorshipPage(),
    JobsPage(),
    DirectoryPage(),
    SettingsPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70.0), // Set preferred height of app bar
        child: AppBar(
          toolbarHeight: 70.0, // Set height of app bar
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "lib/Images/Alumlinklogo.png",
                height: 50,
                width: 50,
              ),
              SizedBox(width: 15), // Adjust spacing between logo and title
              Text(
                'Alumlink',
                style: TextStyle(
                    color: Colors.black, fontSize: 50, fontFamily: 'MyFont'),
              ),
            ],
          ),
          backgroundColor: Colors.blue[200],
          actions: <Widget>[
            IconButton(
              icon: const Icon(
                Icons.account_circle,
                size: 30,
              ),
              tooltip: 'Profile',
              onPressed: () {
                // Navigate to profile page
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ProfilePage()),
                );
              },
            ),
            SizedBox(width: 10),
            IconButton(
              icon: const Icon(
                Icons.logout,
                size: 30,
              ),
              tooltip: 'Logout',
              onPressed: () {
                // Perform logout action
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LogoutPage()),
                );
              },
            ),
            SizedBox(width: 10),
          ],
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            Container(
              height: 75.0,
              child: DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.blue[200],
                ),
                child: Text(
                  'Fields',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontFamily: 'MyFont2',
                  ),
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.all_inclusive_rounded,
              ),
              title: Text('Aerospace'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => aero()),
                );
              },
            ),
            ListTile(
              leading: Icon(
                Icons.all_inclusive_rounded,
              ),
              title: Text('AI/ML'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AIML()),
                );
              },
            ),
            ListTile(
              leading: Icon(
                Icons.all_inclusive_rounded,
              ),
              title: Text('Chemical'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => chem()),
                );
              },
            ),
            ListTile(
              leading: Icon(
                Icons.all_inclusive_rounded,
              ),
              title: Text('Civil'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => civil()),
                );
              },
            ),
            ListTile(
              leading: Icon(
                Icons.all_inclusive_rounded,
              ),
              title: Text('Data Science'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DS()),
                );
              },
            ),
            ListTile(
              leading: Icon(
                Icons.all_inclusive_rounded,
              ),
              title: Text('Electrical and Electronics'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => elec()),
                );
              },
            ),
            ListTile(
              leading: Icon(
                Icons.all_inclusive_rounded,
              ),
              title: Text('Finance'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Fin()),
                );
              },
            ),
            ListTile(
              leading: Icon(
                Icons.all_inclusive_rounded,
              ),
              title: Text('Management'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => mgmt()),
                );
              },
            ),
            ListTile(
              leading: Icon(
                Icons.all_inclusive_rounded,
              ),
              title: Text('Marketing'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => mart()),
                );
              },
            ),
            ListTile(
              leading: Icon(
                Icons.all_inclusive_rounded,
              ),
              title: Text('Mechanical'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => mech()),
                );
              },
            ),
            ListTile(
              leading: Icon(
                Icons.all_inclusive_rounded,
              ),
              title: Text('Networking'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Networking()),
                );
              },
            ),
            ListTile(
              leading: Icon(
                Icons.all_inclusive_rounded,
              ),
              title: Text('Physics'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => physics()),
                );
              },
            ),
            ListTile(
              leading: Icon(
                Icons.all_inclusive_rounded,
              ),
              title: Text('Software Development'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => dev()),
                );
              },
            ),
          ],
        ),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          canvasColor: Colors.blue[200],
        ),
        child: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.school),
              label: 'Mentorship',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.work),
              label: 'Jobs',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.people_alt_outlined),
              label: 'Directory',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'Settings',
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.black12,
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}
