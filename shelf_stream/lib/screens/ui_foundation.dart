import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shelf_stream/database/database_helper.dart';
import 'package:shelf_stream/componenents/appbars_model.dart';
import 'package:shelf_stream/componenents/drawer_widget.dart';
import 'package:shelf_stream/screens/browseShelves_screen.dart';
import 'package:shelf_stream/screens/home_screen.dart';
import 'package:shelf_stream/screens/notifications_screen.dart';
import 'package:shelf_stream/screens/userProfile_screen.dart';
import 'package:shelf_stream/screens/search_screen.dart';

class ShelfStreamHome extends StatefulWidget {
  const ShelfStreamHome({super.key, required this.user});

  final List<Map<String, dynamic>> user;
  // final Map<String, dynamic> user;

  @override
  State<ShelfStreamHome> createState() => _ShelfStreamHomeState();
}

class _ShelfStreamHomeState extends State<ShelfStreamHome> {
    int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    final List<Widget> screens = [
      HomeScreen(),
      SearchScreen(),
      BrowseShelves(),
      ProfileScreen(user: widget.user),
    ];

    final List<PreferredSizeWidget> appBarss = [
      appBars(
        title: 'Shelf-Stream',
        withNotif: true,
        onTapNotif: () {
          Navigator.of(context).push(
            CupertinoPageRoute(
              builder: (context) => NotificationsScreen(),
            ),
          );
        },
      ),
      appBars(title: 'Search', withSearch: false),
      appBars(title: 'Browse Virtual Shelves'),
      appBars(title: 'Profile'),
    ];

    return Scaffold(
      appBar: appBarss[selectedIndex],
      drawer: DrawerWidget(
        user:widget.user,
      ),
      body: screens[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        onTap: (index) => setState(() {
          selectedIndex = index;
        }),
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
            backgroundColor: Colors.black,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: "Search",
            backgroundColor: Colors.black,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.book),
            label: "Browse Shelves",
            backgroundColor: Colors.black,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Profile",
            backgroundColor: Colors.black,
          ),
        ],
      ),
    );
  }
}
