import 'package:flutter/material.dart';
import 'package:shelf_stream/database/database_helper.dart';
import 'package:shelf_stream/screens/shelf_stream_home.dart';

class UploadProfilePictureScreen extends StatefulWidget {
  const UploadProfilePictureScreen({super.key, required this.lastId});
  final int lastId;

  @override
  State<UploadProfilePictureScreen> createState() =>
      _UploadProfilePictureScreenState();
}

class _UploadProfilePictureScreenState
    extends State<UploadProfilePictureScreen> {
  final Color textColor = const Color(0xFF203A62);
  final Color buttonColor = const Color(0xFFD1EE6B);

  late Future<List<Map<String, dynamic>>> newUserFuture;
  int id = -1; // Initialize with a default value
  String profilePictureUrl = '';

  @override
  void initState() {
    super.initState();
    newUserFuture =
        DatabaseHelper.getLastInsertedUser(); // Fetch user data asynchronously
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Map<String, dynamic>>>(
      future: newUserFuture,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(child: CircularProgressIndicator());
        }

        if (snapshot.hasError) {
          return Center(child: Text('Error: ${snapshot.error}'));
        }

        if (!snapshot.hasData || snapshot.data!.isEmpty) {
          return const Center(child: Text('No user data available'));
        }

        // Get the first user data from the snapshot
        var newUser = snapshot.data![0];
        id = newUser['id']; // Assign directly without setState

        return Scaffold(
          appBar: AppBar(
            title: const Text('Upload Profile Picture'),
            backgroundColor: buttonColor,
            centerTitle: true,
            iconTheme: const IconThemeData(color: Color(0xFF203A62)),
            titleTextStyle: const TextStyle(
              color: Color(0xFF203A62),
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
            leading: IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            actions: [
              TextButton(
                onPressed: () async {
                  try {
                    await DatabaseHelper.updateProfilePicture(
                        id, profilePictureUrl);

                    var user = await DatabaseHelper.getLastInsertedUser();

                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ShelfStreamHome(user: user),
                      ),
                    );
                  } catch (e) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text('Failed to update profile: $e'),
                        backgroundColor: Colors.red,
                      ),
                    );
                  }
                },
                style: TextButton.styleFrom(foregroundColor: Colors.white),
                child: const Text('Skip'),
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
                    backgroundImage: profilePictureUrl.isNotEmpty
                        ? NetworkImage(profilePictureUrl)
                        : const AssetImage('assets/default_profile.png')
                            as ImageProvider,
                  ),
                  const SizedBox(height: 24),
                  ElevatedButton.icon(
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text(
                              'Uploading photo is not available in demo app.'),
                          backgroundColor: Colors.red,
                        ),
                      );
                    },
                    icon: const Icon(Icons.upload_file),
                    label: const Text('Choose Photo'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: buttonColor,
                      foregroundColor: textColor,
                      minimumSize: const Size(double.infinity, 50),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  ElevatedButton.icon(
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text(
                              'Take a photo feature is not available in demo app.'),
                          backgroundColor: Colors.red,
                        ),
                      );
                    },
                    icon: const Icon(Icons.camera_alt),
                    label: const Text('Take a Photo'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: buttonColor,
                      foregroundColor: textColor,
                      minimumSize: const Size(double.infinity, 50),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                  ),
                  const SizedBox(height: 24),
                  ElevatedButton.icon(
                    onPressed: () {
                      _showUploadImageUrlDialog(context);
                    },
                    icon: const Icon(Icons.link),
                    label: const Text('Upload Image URL'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: buttonColor,
                      foregroundColor: textColor,
                      minimumSize: const Size(double.infinity, 50),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                  ),
                  const SizedBox(height: 40),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(
                        onPressed: signUp,
                        style: ElevatedButton.styleFrom(
                          backgroundColor: buttonColor,
                          foregroundColor: textColor,
                          minimumSize: const Size(120, 50),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        child: const Text('Save'),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        style: TextButton.styleFrom(
                          foregroundColor: textColor,
                          minimumSize: const Size(120, 50),
                        ),
                        child: const Text('Cancel'),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  void _showUploadImageUrlDialog(BuildContext context) {
    final urlController = TextEditingController();

    showDialog(
      context: context,
      builder: (BuildContext dialogContext) {
        return AlertDialog(
          title: const Text('Enter Image URL'),
          content: TextField(
            controller: urlController,
            decoration: const InputDecoration(
              labelText: 'Image URL',
              border: OutlineInputBorder(),
            ),
          ),
          actions: [
            ElevatedButton(
              onPressed: () {
                String enteredUrl = urlController.text.trim();
                if (enteredUrl.isNotEmpty &&
                    Uri.tryParse(enteredUrl)?.hasAbsolutePath == true) {
                  setState(() {
                    profilePictureUrl = enteredUrl;
                  });
                  Navigator.pop(dialogContext);
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('Please enter a valid URL'),
                      backgroundColor: Colors.red,
                    ),
                  );
                }
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: buttonColor,
                foregroundColor: textColor,
              ),
              child: const Text('Save'),
            ),
            TextButton(
              onPressed: () {
                Navigator.pop(dialogContext);
              },
              style: TextButton.styleFrom(foregroundColor: textColor),
              child: const Text('Cancel'),
            ),
          ],
        );
      },
    );
  }

  void signUp() async {
    try {
      await DatabaseHelper.openDb();
      await DatabaseHelper.updateProfilePicture(id, profilePictureUrl);
      var user = await DatabaseHelper.getLastInsertedUser();
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (builder) => ShelfStreamHome(user: user),
        ),
      );

      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('User successfully registered.'),
          backgroundColor: Colors.green,
        ),
      );
    } catch (e) {
      print('Error during sign-up: $e');
    }
  }
}
