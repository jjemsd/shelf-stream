import 'package:flutter/material.dart';
import 'package:shelf_stream/models/user_model.dart';
import 'package:shelf_stream/screens/upload_profile_picture_screen.dart';

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
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign Up'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              controller: firstNameCtrl,
              decoration: InputDecoration(
                labelText: 'First Name',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 16.0),

            TextField(
              controller: lastNameCtrl,
              decoration: InputDecoration(
                labelText: 'Last Name',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 16.0),
            TextField(
              controller: emailCtrl,
              decoration: InputDecoration(
                labelText: 'Email',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 16.0),

            TextField(
              controller: usernameCtrl,
              decoration: InputDecoration(
                labelText: 'Preferred Username',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 16.0),

            TextField(
              controller: bioCtrl,
              decoration: InputDecoration(
                labelText: 'Bio',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 16.0),

            TextField(
              controller: passwordCtrl,
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Password',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 16.0),

            TextField(
              controller: confirmPasswordCtrl,
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Re-enter Password',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 16.0),

            // Sign Up Button
            ElevatedButton(
              onPressed: signUp,
              child: Text('Sign Up'),
            ),
          ],
        ),
      ),
    );
  }

  void signUp() async {
    if (passwordCtrl.text != confirmPasswordCtrl.text) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Passwords do not match')),
      );
      return;
    }
    User user = User(
      firstName: firstNameCtrl.text,
      lastName: lastNameCtrl.text,
      email: emailCtrl.text.trim(),
      username: usernameCtrl.text.trim(),
      bio: bioCtrl.text,
      password: passwordCtrl.text.trim(),
      
    );

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => UploadProfilePictureScreen(userData: user),
      ),
    );
  }
}
