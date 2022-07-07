import 'package:learning_material/lessons.dart';
import 'package:learning_material/platform.dart';
import 'package:flutter/material.dart';
import 'package:learning_material/navpage.dart';
import 'package:learning_material/tutoring.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {

  TextEditingController controller = TextEditingController();

  int selectedIndex = 0;
  List<Widget> widgetOptions = <Widget>[
    Lessons(),
    Platform(),
    NavPage(),
    Tutoring(),
  ];

  void onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey.shade600,
        selectedLabelStyle: const TextStyle(fontWeight: FontWeight.w600),
        unselectedLabelStyle: const TextStyle(fontWeight: FontWeight.w600),
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'Lessons',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.view_carousel),
            label: 'Platform',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.book),
            label: 'Nav',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.people_alt_outlined),
            label: 'Tutoring',
          ),
        ],
        currentIndex: selectedIndex,
        onTap: onItemTapped,
      ),
      body: Center(
          child: widgetOptions.elementAt(selectedIndex))
              );
           }
        }
