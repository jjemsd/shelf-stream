import 'package:flutter/material.dart';

PreferredSizeWidget appBars({
  required String title,
  bool withSearch = false,
  VoidCallbackAction? onTapSearch,
  bool withNotif = false,
  VoidCallback? onTapNotif,
  bool isProfile = false,
  VoidCallback? onTapMenu,
}) {
  return AppBar(
    leading: withSearch
        ? Icon(
            Icons.search,
            size: 30,
          )
        : null,
    title: withSearch
        ? Container(
            height: 40,
            child: TextField(
              decoration: InputDecoration(
                // prefixIcon: Icon(Icons.search),
                hintText: 'Search',
                hintStyle: TextStyle(fontSize: 13),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide(),
                ),
              ),
            ),
          )
        : Text(
            title,
            style: TextStyle(
              fontFamily: 'Monolog',
            ),
          ),
    actions: [
      if (withNotif)
        IconButton(
          onPressed: onTapNotif,
          icon: Icon(Icons.notifications),
        ),
      if (isProfile)
        IconButton(
          onPressed: (onTapMenu),
          icon: Icon(Icons.menu),
        ),
    ],
  );
}
