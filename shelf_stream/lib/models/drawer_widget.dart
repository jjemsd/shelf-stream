import 'package:flutter/material.dart';
import 'package:shelf_stream/screens/log_in_screen.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          DrawerHeader(
            child: Container(),
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Settings'),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.logout),
            title: Text('Log Out'),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.login),
            title: Text('Log in'),
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (builder) => LoginScreen(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
