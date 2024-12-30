import 'package:flutter/material.dart';
import 'package:shelf_stream/database/database_helper.dart';
import 'package:shelf_stream/models/user_model.dart'; // Assuming User class is defined here
import 'package:shelf_stream/screens/upload_profile_picture_screen.dart';
import 'package:sqflite/sqflite.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  var firstNameCtrl = TextEditingController();
  var lastNameCtrl = TextEditingController();
  var emailCtrl = TextEditingController();
  var usernameCtrl = TextEditingController();
  var bioCtrl = TextEditingController();
  var passwordCtrl = TextEditingController();
  var confirmPasswordCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // Fixed textColor as normal variable (no 'const')
    Color textColor = Color.fromARGB(255, 32, 58, 98);
    Color buttonColor = Color.fromARGB(255, 209, 238, 107);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Sign Up'),
        backgroundColor: buttonColor,
        centerTitle: true,
        iconTheme: const IconThemeData(
          color: Color.fromARGB(255, 209, 238, 107),
        ),
        titleTextStyle: const TextStyle(
          color: Color.fromARGB(255, 32, 58, 98),
          fontWeight: FontWeight.bold,
          fontSize: 20,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              TextField(
                controller: firstNameCtrl,
                decoration: InputDecoration(
                  labelText: 'First Name',
                  labelStyle: TextStyle(color: textColor),
                  prefixIcon: Icon(Icons.person, color: textColor),
                  border: const OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: buttonColor),
                  ),
                ),
              ),
              const SizedBox(height: 16.0),
              TextField(
                controller: lastNameCtrl,
                decoration: InputDecoration(
                  labelText: 'Last Name',
                  labelStyle: TextStyle(color: textColor),
                  prefixIcon: Icon(Icons.person_outline, color: textColor),
                  border: const OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: buttonColor),
                  ),
                ),
              ),
              const SizedBox(height: 16.0),
              TextField(
                controller: emailCtrl,
                decoration: InputDecoration(
                  labelText: 'Email',
                  labelStyle: TextStyle(color: textColor),
                  prefixIcon: Icon(Icons.email, color: textColor),
                  border: const OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: buttonColor),
                  ),
                ),
              ),
              const SizedBox(height: 16.0),
              TextField(
                controller: usernameCtrl,
                decoration: InputDecoration(
                  labelText: 'Preferred Username',
                  labelStyle: TextStyle(color: textColor),
                  prefixIcon: Icon(Icons.person_pin, color: textColor),
                  border: const OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: buttonColor),
                  ),
                ),
              ),
              const SizedBox(height: 16.0),
              TextField(
                controller: bioCtrl,
                decoration: InputDecoration(
                  labelText: 'Bio',
                  labelStyle: TextStyle(color: textColor),
                  prefixIcon: Icon(Icons.info, color: textColor),
                  border: const OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: buttonColor),
                  ),
                ),
              ),
              const SizedBox(height: 16.0),
              TextField(
                controller: passwordCtrl,
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Password',
                  labelStyle: TextStyle(color: textColor),
                  prefixIcon: Icon(Icons.lock, color: textColor),
                  border: const OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: buttonColor),
                  ),
                ),
              ),
              const SizedBox(height: 16.0),
              TextField(
                controller: confirmPasswordCtrl,
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Re-enter Password',
                  labelStyle: TextStyle(color: textColor),
                  prefixIcon: Icon(Icons.lock_outline, color: textColor),
                  border: const OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: buttonColor),
                  ),
                ),
              ),
              const SizedBox(height: 16.0),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: buttonColor,
                  foregroundColor: textColor,
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                onPressed: signUp,
                child: const Text(
                  'Sign Up',
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

  void signUp() async {
    if (firstNameCtrl.text.trim().isEmpty ||
        lastNameCtrl.text.trim().isEmpty ||
        emailCtrl.text.trim().isEmpty ||
        usernameCtrl.text.trim().isEmpty ||
        bioCtrl.text.trim().isEmpty ||
        passwordCtrl.text.trim().isEmpty ||
        confirmPasswordCtrl.text.trim().isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('All fields are required. Please complete the form.'),
          backgroundColor: Colors.red,
        ),
      );
      return;
    }

    if (passwordCtrl.text.trim() != confirmPasswordCtrl.text.trim()) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Passwords do not match'),
          backgroundColor: Colors.red,
        ),
      );
      return;
    }

    User user = User(
      firstName: firstNameCtrl.text.trim(),
      lastName: lastNameCtrl.text.trim(),
      email: emailCtrl.text.trim(),
      username: usernameCtrl.text.trim(),
      bio: bioCtrl.text.trim(),
      password: passwordCtrl.text.trim(),
    );

    DatabaseHelper.insertUser(user);

    var newUser = await DatabaseHelper.getLastInsertedUser();

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) =>
            UploadProfilePictureScreen(lastId: newUser[0]['id']), // Passing Map
      ),
    );
  }
}
