import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'screens/Jobs_screen.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Widget> pages = [
    const JobsScreen(),
    Container(
      color: Colors.amber,
    ),
    Container(
      color: Colors.red[400],
    ),
  ];

  int _selected = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: pages[_selected],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selected,
          onTap: (value) {
            setState(() {
              _selected = value;
            });
          },
          items: const [
            BottomNavigationBarItem(
                icon: Icon(FontAwesomeIcons.briefcase), label: 'Jobs'),
            BottomNavigationBarItem(
                icon: Icon(FontAwesomeIcons.bookmark), label: 'Saved'),
            BottomNavigationBarItem(
                icon: Icon(FontAwesomeIcons.user), label: 'Account'),
          ],
        ),
      ),
    );
  }
}
