import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:shelf_stream/database/database_helper.dart';
import 'package:shelf_stream/models/book_details.dart';
import 'package:shelf_stream/models/user_model.dart';
import 'package:shelf_stream/screens/borrowing_screen.dart';
import 'package:shelf_stream/screens/lending_screen.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key, required this.user});
  final List<Map<String, dynamic>> user;

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  late final TextEditingController firstNameCtrl = TextEditingController();
  late final TextEditingController lastNameCtrl = TextEditingController();
  late final TextEditingController emailCtrl = TextEditingController();
  late final TextEditingController usernameCtrl = TextEditingController();
  late final TextEditingController bioCtrl = TextEditingController();

  final TextEditingController titleController = TextEditingController();
  final TextEditingController authorController = TextEditingController();
  final TextEditingController detailsController = TextEditingController();
  final TextEditingController imageUrlController = TextEditingController();

  Map<String, dynamic> userr = {};

  Future<void> fetchUserData(int userId) async {
    try {
      Map<String, dynamic> fetchUser =
          await DatabaseHelper.getUserById(userId) ?? {};

      setState(() {
        userr = fetchUser;
      });
      print('User data fetched: $userr');
    } catch (e) {
      print('Error fetching user data: $e');
    }
  }

  @override
  void initState() {
    super.initState();

    fetchUserData(widget.user[0]['id']);
  }

  String shelfName = 'Add a name for your shelf';
  String coverPhoto =
      'https://www.clcasfba.org/wp-content/uploads/2023/06/no-image-available.jpg';
  bool isLongPressed = false;

  // late Map<String, dynamic> currentUser;

  // @override
  // void initState() {
  //   super.initState();
  //   currentUser = ; // Initialize current user
  // }

  @override
  void dispose() {
    firstNameCtrl.dispose();
    lastNameCtrl.dispose();
    emailCtrl.dispose();
    usernameCtrl.dispose();
    bioCtrl.dispose();
    titleController.dispose();
    authorController.dispose();
    detailsController.dispose();
    imageUrlController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    userr = widget.user[0];
    print(userr);
    print(widget.user);
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Image.network(
                coverPhoto,
                fit: BoxFit.cover,
                width: double.infinity,
                height: 200,
              ),
              Container(
                height: 200,
                width: double.infinity,
                color: Colors.black54,
              ),
              Positioned(
                top: 50,
                left: 16,
                child: GestureDetector(
                  onTap: () {
                    _showEditProfilePhotoDialog(context);
                  },
                  child: CircleAvatar(
                    radius: 50,
                    backgroundImage: userr['profilePicture'] != null ||
                            userr['profilePicture'] != ''
                        ? NetworkImage(userr['profilePicture'])
                        : const NetworkImage(
                            'https://cdn.vectorstock.com/i/500p/95/56/user-profile-icon-avatar-or-person-vector-45089556.jpg',
                          ),
                  ),
                ),
              ),
              Positioned(
                top: 20,
                right: 20,
                child: IconButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext dialogContext) {
                        return AlertDialog(
                          title: Text('Edit Cover Photo'),
                          content: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              ListTile(
                                leading: Icon(Icons.camera_alt),
                                title: Text('Take a Photo'),
                                onTap: () async {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                      content: Text(
                                          '"Take a Photo" is not available in this demo app.'),
                                    ),
                                  );

                                  // Navigator.pop(
                                  //     dialogContext); // Close the dialog
                                  // print('Take a photo selected');
                                },
                              ),
                              ListTile(
                                leading: Icon(Icons.photo_library),
                                title: Text('Choose from Gallery'),
                                onTap: () async {
                                  SnackBar(
                                    content: Text(
                                        '"Choose from Gallery" is not available in this demo app.'),
                                  );
                                  Navigator.pop(
                                      dialogContext); // Close the dialog
                                  print('Choose from gallery selected');
                                },
                              ),
                              ListTile(
                                leading: Icon(Icons.link),
                                title: Text('Enter Image URL'),
                                onTap: () {
                                  Navigator.pop(
                                      dialogContext); // Close the dialog
                                  _showEnterImageUrlDialog(
                                      context); // Show another dialog for URL input
                                },
                              ),
                              ListTile(
                                leading: Icon(Icons.delete),
                                title: Text('Delete Cover Photo'),
                                onTap: () {
                                  // Logic for deleting the cover photo
                                  Navigator.pop(
                                      dialogContext); // Close the dialog
                                  print('Delete cover photo selected');
                                },
                              ),
                            ],
                          ),
                          actions: [
                            TextButton(
                              onPressed: () {
                                Navigator.pop(
                                    dialogContext); // Close dialog without any action
                              },
                              child: Text('Cancel'),
                            ),
                          ],
                        );
                      },
                    );
                  },
                  icon: FaIcon(
                    FontAwesomeIcons.squarePen,
                    color: Colors.white54,
                  ),
                ),
              ),
              Positioned(
                top: 70,
                left: 130,
                right: 16,
                child: widget.user.isNotEmpty
                    ? Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            userr['firstName'].isNotEmpty ||
                                    (userr['firstName'].isEmpty &&
                                        userr['lastName'].isNotEmpty)
                                ? "${userr['firstName']} ${userr['lastName']}"
                                : "User (${userr["username"]})",
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 4),
                          Text(
                            userr['bio'].isNotEmpty ?? ''
                                ? "${userr['bio']}"
                                : '',
                            style: const TextStyle(
                              color: Colors.white70,
                              fontSize: 14,
                              fontStyle: FontStyle.italic,
                            ),
                          ),
                          const SizedBox(height: 8),
                        ],
                      )
                    : const Text(
                        'No user data available',
                        style: TextStyle(color: Colors.white),
                      ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10, left: 16, right: 16),
            child: Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            title: Text('Add Book'),
                            content: SingleChildScrollView(
                              child: Column(
                                children: [
                                  TextField(
                                    decoration:
                                        InputDecoration(labelText: 'Title'),
                                    controller:
                                        titleController, // Add controller for handling input
                                  ),
                                  TextField(
                                    decoration:
                                        InputDecoration(labelText: 'Author'),
                                    controller:
                                        authorController, // Add controller for handling input
                                  ),
                                  TextField(
                                    decoration:
                                        InputDecoration(labelText: 'Details'),
                                    controller:
                                        detailsController, // Add controller for handling input
                                  ),
                                  TextField(
                                    decoration: InputDecoration(
                                        labelText: 'Image URL (optional)'),
                                    controller:
                                        imageUrlController, // Add controller for handling input
                                  ),
                                ],
                              ),
                            ),
                            actions: [
                              ElevatedButton(
                                onPressed: () {
                                  // Handle adding the book, for example, by creating a BookDetails object
                                  BookDetails newBook = BookDetails(
                                    title: titleController.text,
                                    author: authorController.text,
                                    ownerName: userr['name'],
                                    ownerId: userr['id'],
                                    details: detailsController.text,
                                    imageUrl: imageUrlController.text.isNotEmpty
                                        ? imageUrlController.text
                                        : 'https://upload.wikimedia.org/wikipedia/commons/b/b9/No_Cover.jpg',
                                  );

                                  DatabaseHelper.insertBook(newBook);
                                  setState(() {
                                    titleController.clear();
                                    authorController.clear();
                                    titleController.clear();
                                    detailsController.clear();
                                    imageUrlController.clear();
                                  });

                                  Navigator.pop(context);
                                },
                                child: Text('Add Book'),
                              ),
                              TextButton(
                                onPressed: () {
                                  Navigator.pop(context); // Close the dialog
                                },
                                child: Text('Cancel'),
                              ),
                            ],
                          );
                        },
                      );
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        FaIcon(
                          FontAwesomeIcons.plus,
                          size: 17,
                        ),
                        SizedBox(width: 10),
                        Text('Add Books'),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                    onPressed: () {
                      if (userr.isNotEmpty) {
                        firstNameCtrl.text = userr['firstName'] ?? '';
                        lastNameCtrl.text = userr['lastName'] ?? '';
                        emailCtrl.text = userr['email'] ?? '';
                        usernameCtrl.text = userr['username'] ?? '';
                        bioCtrl.text = userr['bio'] ?? '';
                        showDialog(
                          context: context,
                          builder: (BuildContext dialogContext) {
                            return AlertDialog(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(16.0),
                              ),
                              title: const Text(
                                'Edit Profile',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              content: SingleChildScrollView(
                                child: Column(
                                  crossAxisAlignment:
                                      CrossAxisAlignment.stretch,
                                  children: [
                                    TextField(
                                      controller: firstNameCtrl,
                                      decoration: InputDecoration(
                                        label: Text('First name'),
                                        border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                        contentPadding:
                                            const EdgeInsets.symmetric(
                                          horizontal: 16.0,
                                          vertical: 12.0,
                                        ),
                                      ),
                                    ),
                                    const SizedBox(height: 16.0),
                                    TextField(
                                      controller: lastNameCtrl,
                                      decoration: InputDecoration(
                                        label: Text('Last name'),
                                        border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                        contentPadding:
                                            const EdgeInsets.symmetric(
                                          horizontal: 16.0,
                                          vertical: 12.0,
                                        ),
                                      ),
                                    ),
                                    const SizedBox(height: 16.0),
                                    TextField(
                                      controller: emailCtrl,
                                      keyboardType: TextInputType.emailAddress,
                                      decoration: InputDecoration(
                                        label: Text('Email'),
                                        border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                        contentPadding:
                                            const EdgeInsets.symmetric(
                                          horizontal: 16.0,
                                          vertical: 12.0,
                                        ),
                                      ),
                                    ),
                                    const SizedBox(height: 16.0),
                                    TextField(
                                      controller: usernameCtrl,
                                      decoration: InputDecoration(
                                        label: Text('Username'),
                                        border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                        contentPadding:
                                            const EdgeInsets.symmetric(
                                          horizontal: 16.0,
                                          vertical: 12.0,
                                        ),
                                      ),
                                    ),
                                    const SizedBox(height: 16.0),
                                    TextField(
                                      controller: bioCtrl,
                                      decoration: InputDecoration(
                                        label: Text('Bio'),
                                        border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                        contentPadding:
                                            const EdgeInsets.symmetric(
                                          horizontal: 16.0,
                                          vertical: 12.0,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              actions: [
                                ElevatedButton.icon(
                                  onPressed: () async {
                                    var updatedUser = User(
                                      id: userr['id'],
                                      firstName: firstNameCtrl.text,
                                      lastName: lastNameCtrl.text,
                                      email: emailCtrl.text,
                                      username: usernameCtrl.text,
                                      bio: bioCtrl.text,
                                      profilePicture: userr['profilePicture'],
                                      password: userr['password'],
                                    );

                                    try {
                                      await DatabaseHelper.editProfile(
                                          updatedUser);

                                      setState(() {
                                        userr = updatedUser.toMap();
                                      });
                                      print('Updated details: $userr');
                                      // print('Updated details: $newUserData');

                                      Navigator.of(dialogContext).pop();

                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(
                                        const SnackBar(
                                          content: Text(
                                              'Profile updated successfully!'),
                                        ),
                                      );
                                    } catch (e) {
                                      print('Error updating profile: $e');
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(
                                        const SnackBar(
                                          content:
                                              Text('Failed to update profile.'),
                                        ),
                                      );
                                    }
                                  },
                                  // icon: const Icon(Icons.save),
                                  label: const Text('Save'),
                                ),
                                TextButton(
                                  onPressed: () =>
                                      Navigator.of(dialogContext).pop(),
                                  child: const Text('Cancel'),
                                ),
                              ],
                            );
                          },
                        );
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                              content: Text('No user data available to edit.')),
                        );
                      }
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.edit),
                        SizedBox(width: 10),
                        Text('Edit Profile'),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.only(left: 5),
            child: Row(
              children: [
                TextButton(
                  onPressed: borrows,
                  child: Text('Borrows'),
                ),
                TextButton(
                  onPressed: lends,
                  child: Text('Lends'),
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Row(
              children: [
                Text(
                  shelfName,
                  style: TextStyle(fontSize: 18),
                ),
                SizedBox(width: 15),
                IconButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (BuildContext ctx) {
                          var editShelfName = TextEditingController();
                          shelfName == 'Add a name for your shelf'
                              ? editShelfName.text = ''
                              : editShelfName.text = shelfName;
                          return AlertDialog(
                            title: Text('Edit Shelf name'),
                            content: TextField(
                              controller: editShelfName,
                            ),
                            actions: [
                              ElevatedButton(
                                onPressed: () {
                                  setState(() {
                                    shelfName = editShelfName.text;
                                  });
                                  Navigator.pop(ctx);
                                },
                                child: Text('Save'),
                              ),
                              TextButton(
                                onPressed: () {
                                  Navigator.pop(ctx);
                                },
                                child: Text('Cancel'),
                              ),
                            ],
                          );
                        });
                  },
                  icon: FaIcon(
                    FontAwesomeIcons.squarePen,
                    color: Colors.black26,
                    size: 18,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: FutureBuilder<List<Map<String, dynamic>>>(
                future: DatabaseHelper.getBooksByOwnerId(
                    widget.user.isNotEmpty ? userr['id'] : -1),
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return Center(child: CircularProgressIndicator());
                  } else if (snapshot.hasError) {
                    return Center(child: Text('Error: ${snapshot.error}'));
                  } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
                    return Center(child: Text('No books found.'));
                  } else {
                    List<Map<String, dynamic>> books = snapshot.data!;
                    return GridView.builder(
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                      ),
                      itemCount: books.length,
                      itemBuilder: (BuildContext context, int index) {
                        var bookData = books[index];
                        BookDetails book = BookDetails.fromMap(bookData);

                        return Padding(
                          padding: const EdgeInsets.all(4),
                          child: GestureDetector(
                            onLongPress: () {
                              setState(() {
                                isLongPressed = true;
                              });
                            },
                            onTap: () {
                              if (isLongPressed) {
                                setState(() {
                                  isLongPressed = false;
                                });
                              }
                            },
                            child: Stack(
                              children: [
                                GridTile(
                                  footer: GridTileBar(
                                    backgroundColor: Colors.black54,
                                    title: Text(book.title),
                                  ),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: NetworkImage(
                                          book.imageUrl ??
                                              'https://d827xgdhgqbnd.cloudfront.net/wp-content/uploads/2016/04/09121712/book-cover-placeholder.png',
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned.fill(
                                  child: GestureDetector(
                                    behavior: HitTestBehavior.opaque,
                                    onTap: () {
                                      if (isLongPressed) {
                                        setState(() {
                                          isLongPressed = false;
                                        });
                                      }
                                    },
                                    child: isLongPressed
                                        ? Container(
                                            color: Colors.black38,
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                IconButton(
                                                  onPressed: () {
                                                    _showEditBookDialog(
                                                        context, book);
                                                  },
                                                  icon: FaIcon(
                                                    FontAwesomeIcons.squarePen,
                                                    color: Colors.white,
                                                    size: 30,
                                                  ),
                                                ),
                                                SizedBox(width: 15),
                                                IconButton(
                                                  onPressed: () async {
                                                    if (book.id != null) {
                                                      showDialog(
                                                          context: context,
                                                          builder: (BuildContext
                                                              dialogCtx) {
                                                            return AlertDialog(
                                                              title: Text(
                                                                  'Delete Book'),
                                                              content: Text(
                                                                  'Are you sure you want to delete this book?'),
                                                              actions: [
                                                                ElevatedButton(
                                                                  onPressed:
                                                                      () async {
                                                                    await DatabaseHelper
                                                                        .deleteBook(
                                                                            book.id!);
                                                                    Navigator.pop(
                                                                        dialogCtx);
                                                                    setState(
                                                                        () {});
                                                                  },
                                                                  child: Text(
                                                                      'Delete'),
                                                                ),
                                                                TextButton(
                                                                  onPressed:
                                                                      () {
                                                                    Navigator.pop(
                                                                        dialogCtx);
                                                                  },
                                                                  child: Text(
                                                                      'Cancel'),
                                                                ),
                                                              ],
                                                            );
                                                          });
                                                      // Refresh UI
                                                    }
                                                  },
                                                  icon: FaIcon(
                                                    FontAwesomeIcons.trash,
                                                    color: Colors.white,
                                                    size: 27,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          )
                                        : Container(),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    );
                  }
                },
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _showEditBookDialog(BuildContext context, BookDetails book) {
    final titleController = TextEditingController(text: book.title);
    final authorController = TextEditingController(text: book.author);
    final descriptionController = TextEditingController(text: book.details);
    final imageUrlController = TextEditingController(text: book.imageUrl);

    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('Edit Book'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                controller: titleController,
                decoration: InputDecoration(labelText: 'Title'),
                onChanged: (value) {
                  book.title = value;
                },
              ),
              TextField(
                controller: authorController,
                decoration: InputDecoration(labelText: 'Author'),
                onChanged: (value) {
                  book.author = value;
                },
              ),
              TextField(
                controller: descriptionController,
                decoration: InputDecoration(labelText: 'Description'),
                onChanged: (value) {
                  book.details = value;
                },
              ),
              TextField(
                controller: imageUrlController,
                decoration: InputDecoration(labelText: 'Image URL'),
                onChanged: (value) {
                  book.imageUrl = value;
                },
              ),
            ],
          ),
          actions: [
            // Save Changes
            ElevatedButton(
              onPressed: () async {
                // Update the book in the database
                book.title = titleController.text;
                book.author = authorController.text;
                book.details = descriptionController.text;
                book.imageUrl = imageUrlController.text;

                await DatabaseHelper.editBook(book);
                Navigator.pop(context); // Close dialog
                setState(() {}); // Refresh UI
              },
              child: Text('Save'),
            ),
            // Delete Book

            // Cancel Action
            TextButton(
              onPressed: () {
                Navigator.pop(context); // Close dialog without saving
              },
              child: Text('Cancel'),
            ),
          ],
        );
      },
    );
  }

  void _showEditCoverPhotoDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext dialogContext) {
        return AlertDialog(
          title: Text('Edit Cover Photo'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ListTile(
                leading: Icon(Icons.camera_alt),
                title: Text('Take a Photo'),
                onTap: () async {
                  // Logic for taking a photo
                  // E.g., Use ImagePicker package to capture an image
                  Navigator.pop(dialogContext); // Close the dialog
                  print('Take a photo selected');
                },
              ),
              ListTile(
                leading: Icon(Icons.photo_library),
                title: Text('Choose from Gallery'),
                onTap: () async {
                  // Logic for selecting a photo from the gallery
                  // E.g., Use ImagePicker package to pick an image
                  Navigator.pop(dialogContext); // Close the dialog
                  print('Choose from gallery selected');
                },
              ),
              ListTile(
                leading: Icon(Icons.link),
                title: Text('Enter Image URL'),
                onTap: () {
                  Navigator.pop(dialogContext); // Close the dialog
                  _showEnterImageUrlDialog(
                      context); // Show another dialog for URL input
                },
              ),
              ListTile(
                leading: Icon(Icons.delete),
                title: Text('Delete Cover Photo'),
                onTap: () {
                  // Logic for deleting the cover photo
                  Navigator.pop(dialogContext); // Close the dialog
                  print('Delete cover photo selected');
                },
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(dialogContext); // Close dialog without any action
              },
              child: Text('Cancel'),
            ),
          ],
        );
      },
    );
  }

  void _showEnterImageUrlDialog(BuildContext context) {
    final urlController = TextEditingController();

    showDialog(
      context: context,
      builder: (BuildContext dialogContext) {
        return AlertDialog(
          title: const Text('Enter Cover Photo URL'),
          content: TextField(
            controller: urlController,
            decoration: const InputDecoration(labelText: 'Image URL'),
          ),
          actions: [
            ElevatedButton(
              onPressed: () {
                String enteredUrl = urlController.text.trim();
                if (enteredUrl.isNotEmpty) {
                  setState(() {
                    coverPhoto = enteredUrl;
                  });
                }
                Navigator.pop(dialogContext); // Close the dialog
              },
              child: const Text('Save'),
            ),
            TextButton(
              onPressed: () {
                Navigator.pop(dialogContext); // Close dialog without saving
              },
              child: const Text('Cancel'),
            ),
          ],
        );
      },
    );
  }

  void _showEnterUrlDialog(BuildContext context) {
    final urlController = TextEditingController();

    showDialog(
      context: context,
      builder: (BuildContext dialogContext) {
        return AlertDialog(
          title: const Text('Enter Profile Picture URL'),
          content: TextField(
            controller: urlController,
            decoration: const InputDecoration(labelText: 'Image URL'),
          ),
          actions: [
            ElevatedButton(
              onPressed: () async {
                String enteredUrl = urlController.text.trim();
                if (enteredUrl.isNotEmpty) {
                  try {
                    await DatabaseHelper.updateProfilePicture(
                        userr['id'], enteredUrl);

                    print('Updated Profile Picture URL: $enteredUrl');
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text('Update profile picture successsful'),
                      ),
                    );
                    Navigator.pop(dialogContext);
                  } catch (e) {
                    print('Error updating profile picture: $e');
                    Navigator.pop(dialogContext);
                  }
                }
              },
              child: const Text('Save'),
            ),
            TextButton(
              onPressed: () {
                Navigator.pop(dialogContext); // Close dialog without saving
              },
              child: const Text('Cancel'),
            ),
          ],
        );
      },
    );
  }

  void _showEditProfilePhotoDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext dialogContext) {
        return AlertDialog(
          title: Text('Edit Cover Photo'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ListTile(
                leading: Icon(Icons.camera_alt),
                title: Text('Take a Photo'),
                onTap: () async {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(
                          '"Take a Photo" is not available in this demo app.'),
                    ),
                  );
                },
              ),
              ListTile(
                leading: Icon(Icons.photo_library),
                title: Text('Choose from Gallery'),
                onTap: () async {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(
                          '"Choose from Gallery" is not available in this demo app.'),
                    ),
                  );
                  Navigator.pop(dialogContext); // Close the dialog
                },
              ),
              ListTile(
                leading: Icon(Icons.link),
                title: Text('Enter Image URL'),
                onTap: () {
                  Navigator.pop(dialogContext); // Close the dialog
                  _showEnterUrlDialog(context); // Show dialog to input URL
                },
              ),
              ListTile(
                leading: Icon(Icons.delete),
                title: Text('Delete profile photo'),
                onTap: () {
                  // Logic for deleting the cover photo
                  Navigator.pop(dialogContext); // Close the dialog
                  print('Delete profile photo selected');
                },
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(dialogContext); // Close dialog without any action
              },
              child: Text('Cancel'),
            ),
          ],
        );
      },
    );
  }

  void borrows() {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (builder) => BorrowingList(),
      ),
    );
  }

  void lends() {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (builder) => LendingList(),
      ),
    );
  }
}
