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
import 'package:alumlink_app/Content/Mentorship.dart';
import 'package:alumlink_app/Content/jobs.dart';
import 'package:alumlink_app/Content/directorypage.dart';
import 'package:alumlink_app/Content/settings.dart';

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
        preferredSize: Size.fromHeight(60.0), // Set preferred height of app bar
        child: AppBar(
          toolbarHeight: 60.0, // Set height of app bar
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 25,
                backgroundImage: AssetImage("lib/Images/Alumlinklogo.png"),
              ),
              SizedBox(width: 15), // Adjust spacing between logo and title
              Text(
                'Alumlink',
                style: TextStyle(color: Colors.black, fontSize: 30 ,fontFamily:'MyFont1'),
              ),
            ],
          ),
          backgroundColor: Colors.blue[200],
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.account_circle , size: 30,),
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
              icon: const Icon(Icons.logout , size: 30,),
              tooltip: 'Logout',
              onPressed: () {
                // Perform logout action
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
                  ),
                ),
              ),
            ),
            ListTile(
              leading: ImageIcon(
                AssetImage("lib/Images/deep-learning.png"),
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
              leading: ImageIcon(
                AssetImage("lib/Images/DS.png"),
              ),
              title: Text('Datascience'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DS()),
                );
              },
            ),
            ListTile(
              leading: ImageIcon(
                AssetImage("lib/Images/DS.png"),
              ),
              title: Text('Software Development'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => dev()),
                );
              },
            ),
            ListTile(
              leading: ImageIcon(
                AssetImage("lib/Images/cybersecurity.png"),
              ),
              title: Text('Cybersecurity'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => cybersec()),
                );
              },
            ),
            ListTile(
              leading: ImageIcon(
                AssetImage("lib/Images/Networking.png"),
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
              leading: ImageIcon(
                AssetImage("lib/Images/Finance.png"),
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
              leading: ImageIcon(
                AssetImage("lib/Images/Marketing.png"),
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
              leading: ImageIcon(
                AssetImage("lib/Images/mgmt.png"),
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
              leading: ImageIcon(
                AssetImage("lib/Images/Electrical.png"),
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
              leading: ImageIcon(
                AssetImage("lib/Images/Mechanical.png"),
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
              leading: ImageIcon(
                AssetImage("lib/Images/Civil.png"),
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
              leading: ImageIcon(
                AssetImage("lib/Images/Chemical.png"),
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
              leading: ImageIcon(
                AssetImage("lib/Images/Aero.png"),
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
              leading: ImageIcon(
                AssetImage("lib/Images/Physics.png"),
              ),
              title: Text('Physics'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => physics()),
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
