import 'package:first_app/pages/home_page.dart';
import 'package:first_app/pages/profile_page.dart';
import 'package:first_app/pages/second_page.dart';
import 'package:first_app/pages/settings_page.dart';
import 'package:flutter/material.dart';

class FirstPage extends StatefulWidget {
  FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  int selected_index = 0;

  List _pages = [homepage(), ProfilePage(), SettingsPage()];

  void _navigbottombar(int index) {
    setState(() {
      selected_index = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text("I am the first page")),
      body: _pages[selected_index],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selected_index,
        onTap: _navigbottombar,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "H O M E"),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "P R O F I L E",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: "S E T T I N G S",
          ),
        ],
      ),
      drawer: Drawer(
        backgroundColor: const Color.fromARGB(255, 139, 100, 207),
        child: Column(
          children: [
            DrawerHeader(child: Icon(Icons.favorite, size: 38)),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("H O M E"),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, '/homepage');
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text("Settings "),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SettingsPage()),
                );
              },
            ),
          ],
        ),
      ),

      // body: Center(
      //   _pages[selected_index]
      //   child: ElevatedButton(
      //     child: Text("Go to Second page"),
      //     onPressed: () {
      //       // Navigator.push(
      //       //   context,
      //       //   MaterialPageRoute(builder: (context) => SecondPage()),
      //       // );
      //       Navigator.pop(context);
      //       Navigator.pushNamed(context, '/secondpage');
      //     },
      //   ),
      // ),
    );
  }
}
