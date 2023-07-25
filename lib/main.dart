import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyTabBarMenu(),
    );
  }
}

class MyTabBarMenu extends StatefulWidget {
  @override
  _MyTabBarMenuState createState() => _MyTabBarMenuState();
}

class _MyTabBarMenuState extends State<MyTabBarMenu> {
  int _currentIndex = 0;

  // Sayfaları oluştururken liste olarak tutalım
  final List<Widget> _pages = [
    TabPage(title: 'Browse'),
    TabPage(title: 'Profile'),
    TabPage(title: 'Chat'),
    TabPage(title: 'Menu'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tabbar Menü'),
      ),
      body: _pages[_currentIndex],
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.grey[300], // Menü arka plan rengi
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30.0),
            topRight: Radius.circular(30.0),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              offset: Offset(0, -2),
              blurRadius: 6.0,
            ),
          ],
        ),
        child: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          items: [
            buildBottomNavigationBarItem('Browse', Icons.browse_gallery),
            buildBottomNavigationBarItem('Profile', Icons.person),
            buildBottomNavigationBarItem('Chat', Icons.chat),
            buildBottomNavigationBarItem('Menu', Icons.menu),
          ],
        ),
      ),
    );
  }

  BottomNavigationBarItem buildBottomNavigationBarItem(
      String title, IconData iconData) {
    return BottomNavigationBarItem(
      icon: Icon(
        iconData,
        color: Colors.grey,
      ),
      activeIcon: Icon(
        iconData,
        color: Colors.blue,
      ),
      label: title,
    );
  }
}

class TabPage extends StatelessWidget {
  final String title;

  TabPage({required this.title});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        title,
        style: TextStyle(fontSize: 24, color: Colors.black),
      ),
    );
  }
}
