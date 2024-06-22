import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    Text('Home Page'),
    Text('Directory'),
    Text('Mentorship'),
    Text('Jobs'),
    Text('Settings'),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Alumlink'),
        titleTextStyle: TextStyle(color: Colors.black, fontSize: 24),
        centerTitle: true,
        backgroundColor: Colors.blue[200],
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(Icons.menu),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            );
          },
        ),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.account_circle),
            tooltip: 'Profile',
            onPressed: () {
              // Navigate to profile page
            },
          ),
          SizedBox(width: 10),
          IconButton(
            icon: const Icon(Icons.logout),
            tooltip: 'Logout',
            onPressed: () {
              // Logout
            },
          ),
          SizedBox(width: 10)
        ],
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
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: ImageIcon(
                AssetImage("lib/Images/DS.png"),
              ),
              title: Text('Datascience'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: ImageIcon(
                AssetImage("lib/Images/DS.png"),
              ),
              title: Text('Software Development'),
              onTap: () {
                // Navigate to settings pagex
              },
            ),
            ListTile(
              leading: ImageIcon(
                AssetImage("lib/Images/cybersecurity.png"),
              ),
              title: Text('Cybersecurity'),
              onTap: () {
                // Logout
              },
            ),
            ListTile(
              leading: ImageIcon(
                AssetImage("lib/Images/Networking.png"),
              ),
              title: Text('Networking'),
              onTap: () {
                // Logout
              },
            ),
            ListTile(
              leading: ImageIcon(
                AssetImage("lib/Images/Finance.png"),
              ),
              title: Text('Finance'),
              onTap: () {
                // Logout
              },
            ),
            ListTile(
              leading: ImageIcon(
                AssetImage("lib/Images/Marketing.png"),
              ),
              title: Text('Marketing'),
              onTap: () {
                // Logout
              },
            ),
            ListTile(
              leading: ImageIcon(
                AssetImage("lib/Images/mgmt.png"),
              ),
              title: Text('Management'),
              onTap: () {
                // Logout
              },
            ),
            ListTile(
              leading: ImageIcon(
                AssetImage("lib/Images/Electrical.png"),
              ),
              title: Text('Electrical and Electronics'),
              onTap: () {
                // Logout
              },
            ),
            ListTile(
              leading: ImageIcon(
                AssetImage("lib/Images/Mechanical.png"),
              ),
              title: Text('Mechanical'),
              onTap: () {
                // Logout
              },
            ),
            ListTile(
              leading: ImageIcon(
                AssetImage("lib/Images/Civil.png"),
              ),
              title: Text('Civil'),
              onTap: () {
                // Logout
              },
            ),
            ListTile(
              leading: ImageIcon(
                AssetImage("lib/Images/Chemical.png"),
              ),
              title: Text('Chemical'),
              onTap: () {
                // Logout
              },
            ),
            ListTile(
              leading: ImageIcon(
                AssetImage("lib/Images/Aero.png"),
              ),
              title: Text('Aerospace'),
              onTap: () {
                // Logout
              },
            ),
            ListTile(
              leading: ImageIcon(
                AssetImage("lib/Images/Physics.png"),
              ),
              title: Text('Physics'),
              onTap: () {
                // Logout
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
