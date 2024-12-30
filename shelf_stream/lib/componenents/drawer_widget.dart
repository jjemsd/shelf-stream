import 'package:flutter/material.dart';
import 'package:shelf_stream/database/database_helper.dart';
import 'package:shelf_stream/screens/log_in_screen.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({
    super.key,
    required this.user, // Pass currentUser as a Map
  });

  final List< Map<String, dynamic>> user; // Accept Map instead of List

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/logos/rectangle_green_bg.png'),
                fit: BoxFit.cover, // Ensures the image covers the header area
              ),
            ),
            child: Container(),
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text('Profile'),
            onTap: () {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text('This feature is under construction'),
                ),
              );
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Settings'),
            onTap: () {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text('This feature is under construction'),
                ),
              );
              Navigator.pop(context);
            },
          ),
          Spacer(),
          Card(
            child: ListTile(
              leading: Icon(Icons.logout),
              title: Text('Log Out'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (builder) => LoginScreen(),
                  ),
                );
              },
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Card(
            child: ListTile(
              leading: Icon(
                Icons.delete_forever,
                color: Colors.red,
              ),
              title: Text(
                'Delete Account',
                style: TextStyle(
                  color: Colors.red,
                ),
              ),
              onTap: () async {
                // Show confirmation dialog before deletion
                bool? shouldDelete = await showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    title: Text('Are you sure?'),
                    content: Text(
                        'This action will permanently delete your account.'),
                    actions: [
                      TextButton(
                        onPressed: () {
                          Navigator.pop(context, false);
                        },
                        child: Text('Cancel'),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.pop(context, true);
                        },
                        child: Text('Delete'),
                      ),
                    ],
                  ),
                );

                // If the user confirms, proceed with the deletion
                if (shouldDelete == true) {
                  try {
                    var db = await DatabaseHelper.openDb();

                    // Assuming currentUser contains an id field
                    int userId = user[0]['id'];

                    // Delete the user from the database
                    await db.delete(
                      DatabaseHelper.usersTable,
                      where: 'id = ?',
                      whereArgs: [userId],
                    );

                    // Show a confirmation SnackBar
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text('Your account has been deleted.'),
                        backgroundColor: Colors.green,
                      ),
                    );

                    // Navigate back to the login screen
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                        builder: (builder) => LoginScreen(),
                      ),
                      (route) =>
                          false, // This ensures all previous routes are removed
                    );
                  } catch (e) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text('An error occurred: $e'),
                        backgroundColor: Colors.red,
                      ),
                    );
                  }
                }
              },
            ),
          ),
          SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
