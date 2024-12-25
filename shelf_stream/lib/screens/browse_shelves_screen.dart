import 'package:flutter/material.dart';

class BrowseShelves extends StatefulWidget {
  const BrowseShelves({super.key});

  @override
  State<BrowseShelves> createState() => _BrowseShelvesState();
}

class _BrowseShelvesState extends State<BrowseShelves> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text(
        'Browse Shelves Screen',
      ),
    );
  }
}
