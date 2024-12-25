import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shelf_stream/models/appbars_model.dart';
// import 'package:shelf_stream/models/categories.dart';
import 'package:shelf_stream/screens/browse_shelves_screen.dart';
import 'package:shelf_stream/screens/home_screen.dart';
import 'package:shelf_stream/screens/notifications_screen.dart';
import 'package:shelf_stream/screens/profile_screen.dart';
import 'package:shelf_stream/screens/search_screen.dart';

void main() {
  runApp(const ShelfStreamMain());
}

class ShelfStreamMain extends StatelessWidget {
  const ShelfStreamMain({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // theme: ThemeData.from(
      //   colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
      // ),
      home: const ShelfStreamHome(),
    );
  }
}

class ShelfStreamHome extends StatefulWidget {
  const ShelfStreamHome({super.key});

  @override
  State<ShelfStreamHome> createState() => _ShelfStreamHomeState();
}

class _ShelfStreamHomeState extends State<ShelfStreamHome> {
  

  int selectedIndex = 0;

  final List<Widget> screens = [
    HomeScreen(),
    SearchScreen(),
    BrowseShelves(),
    ProfileScreen(),
  ];

  void onItemTap(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
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
      appBars(title: 'Search', withSearch: true),
      appBars(title: 'Browse Virtual Shelves'),
      appBars(title: 'Profile'),
    ];
    return Scaffold(
      appBar: appBarss[selectedIndex],
      body: screens[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        onTap: onItemTap,
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
