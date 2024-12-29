import 'package:flutter/material.dart';
import 'package:shelf_stream/database/database_helper.dart';
import 'package:shelf_stream/main.dart';

class UploadProfilePictureScreen extends StatefulWidget {
  UploadProfilePictureScreen({required this.userData});
  final userData;
  @override
  _UploadProfilePictureScreenState createState() =>
      _UploadProfilePictureScreenState();
}

class _UploadProfilePictureScreenState
    extends State<UploadProfilePictureScreen> {
  String profilePicUrl =
      'https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_1280.png';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Upload Profile Picture'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          TextButton(
            onPressed: () async {
              try {
                await DatabaseHelper.insertUser(widget.userData);
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('User registered successfully')),
                );

                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ShelfStreamMain(),
                  ),
                );
              } catch (e) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('Failed to register user: $e')),
                );
              }
            },
            child: Text('Skip'),
          ),
        ],
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              CircleAvatar(
                radius: 60,
                backgroundImage: NetworkImage(profilePicUrl),
              ),
              SizedBox(height: 24),
              // Buttons
              ElevatedButton.icon(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content:
                          Text('Uploading photo is not available in demo app.'),
                    ),
                  );
                },
                icon: Icon(Icons.upload_file),
                label: Text('Choose Photo'),
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(double.infinity, 50),
                ),
              ),
              SizedBox(height: 16),
              ElevatedButton.icon(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(
                          'Take a photo feature is not available in demo app.'),
                    ),
                  );
                },
                icon: Icon(Icons.camera_alt),
                label: Text('Take a  Photo'),
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(double.infinity, 50),
                ),
              ),
              SizedBox(height: 24),
              ElevatedButton.icon(
                onPressed: () {
                  _showUploadImageUrlDialog(context);
                },
                icon: Icon(Icons.link),
                label: Text('Upload Image URL'),
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(double.infinity, 50),
                ),
              ),
              SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () async {
                      try {
                        await DatabaseHelper.insertUser(widget.userData);

                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ShelfStreamMain(),
                          ),
                        );
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                              content: Text('User registered successfully')),
                        );
                      } catch (e) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                              content: Text('Failed to register user: $e')),
                        );
                      }
                    },
                    child: Text('Save'),
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(120, 50),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text('Cancel'),
                    style: TextButton.styleFrom(
                      minimumSize: Size(120, 50),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _showUploadImageUrlDialog(BuildContext context) {
    final urlController = TextEditingController();

    showDialog(
      context: context,
      builder: (BuildContext dialogContext) {
        return AlertDialog(
          title: Text('Enter Image URL'),
          content: TextField(
            controller: urlController,
            decoration: InputDecoration(labelText: 'Image URL'),
          ),
          actions: [
            ElevatedButton(
              onPressed: () {
                String enteredUrl = urlController.text.trim();
                if (enteredUrl.isNotEmpty) {
                  setState(() {
                    profilePicUrl = enteredUrl;
                    if (widget.userData is Map) {
                      widget.userData['profilePicture'] = profilePicUrl;
                    } else {
                      widget.userData.profilePicture = profilePicUrl;
                    }
                  });
                  print('Entered URL: $enteredUrl');
                }
                Navigator.pop(dialogContext); // Close the dialog
              },
              child: Text('Save'),
            ),
            TextButton(
              onPressed: () {
                Navigator.pop(dialogContext); // Close dialog without saving
              },
              child: Text('Cancel'),
            ),
          ],
        );
      },
    );
  }
}
