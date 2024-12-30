import 'package:flutter/material.dart';

class LendingList extends StatefulWidget {
  const LendingList({super.key});

  @override
  State<LendingList> createState() => _LendingListState();
}

class _LendingListState extends State<LendingList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lends'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Your books you lend here'),
            ],
          ),
        ],
      ),
    );
  }
}
