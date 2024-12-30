import 'package:flutter/material.dart';
import 'package:shelf_stream/database/database_helper.dart';

class ForgotPasswordScreen extends StatelessWidget {
  final TextEditingController userInputController = TextEditingController();
  final TextEditingController newPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    const textColor = Color.fromARGB(255, 32, 58, 98);
    const buttonColor = Color.fromARGB(255, 209, 238, 107);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Forgot Password'),
        backgroundColor: buttonColor,
        centerTitle: true,
        iconTheme: const IconThemeData(color: textColor),
        titleTextStyle: const TextStyle(
          color: textColor,
          fontWeight: FontWeight.bold,
          fontSize: 20,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Text(
                'Reset Your Password',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: textColor,
                ),
              ),
              const SizedBox(height: 20),
              TextField(
                controller: userInputController,
                decoration: InputDecoration(
                  labelText: 'Enter Email or Username',
                  labelStyle: const TextStyle(color: textColor),
                  prefixIcon: const Icon(Icons.person, color: textColor),
                  border: const OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: buttonColor),
                  ),
                ),
              ),
              const SizedBox(height: 16),
              TextField(
                controller: newPasswordController,
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Enter New Password',
                  labelStyle: const TextStyle(color: textColor),
                  prefixIcon: const Icon(Icons.lock, color: textColor),
                  border: const OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: buttonColor),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: buttonColor,
                  foregroundColor: textColor,
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                onPressed: () async {
                  String input = userInputController.text.trim();
                  String newPassword = newPasswordController.text.trim();

                  if (input.isEmpty || newPassword.isEmpty) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text('Please fill in all fields'),
                        backgroundColor: Colors.red,
                      ),
                    );
                    return;
                  }

                  try {
                    var db = await DatabaseHelper.openDb();

                    List<Map<String, dynamic>> users = await db.rawQuery(
                      'SELECT * FROM ${DatabaseHelper.usersTable} WHERE username = ? OR email = ?',
                      [input, input],
                    );

                    if (users.isNotEmpty) {
                      int userId = users.first['id'];
                      await db.update(
                        DatabaseHelper.usersTable,
                        {'password': newPassword},
                        where: 'id = ?',
                        whereArgs: [userId],
                      );

                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text('Password updated successfully'),
                          backgroundColor: Colors.green,
                        ),
                      );

                      Navigator.of(context).pop();
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text('User not found. Please try again.'),
                          backgroundColor: Colors.red,
                        ),
                      );
                    }
                  } catch (e) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text('An error occurred: $e'),
                        backgroundColor: Colors.red,
                      ),
                    );
                  }
                },
                child: const Text(
                  'Update Password',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
