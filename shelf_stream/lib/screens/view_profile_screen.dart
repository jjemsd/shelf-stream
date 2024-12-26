import 'package:flutter/material.dart';

class ViewProfileScreen extends StatelessWidget {
  final Map<String, dynamic> shelf;

  const ViewProfileScreen({super.key, required this.shelf});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // Header with profile details
          Stack(
            children: [
              Image.network(
                shelf['shelfCover']!,
                fit: BoxFit.cover,
                width: double.infinity,
                height: 200,
              ),
              Container(
                height: 200,
                color: Colors.black54,
              ),
              Positioned(
                top: 50,
                left: 16,
                child: CircleAvatar(
                  radius: 50,
                  backgroundImage: NetworkImage(shelf['profilePicture']!),
                ),
              ),
              Positioned(
                top: 70,
                left: 130,
                right: 16,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      shelf['ownerFullName'] ?? 'Full Name',
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      shelf['ownerBio'] ?? 'Bio not available',
                      style: const TextStyle(
                        color: Colors.white70,
                        fontSize: 14,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Wrap(
                      spacing: 8.0,
                      children: (shelf['genres'] ?? [])
                          .map<Widget>((genre) => Chip(
                                label: Text(genre),
                                backgroundColor: Colors.white.withOpacity(0.8),
                              ))
                          .toList(),
                    ),
                  ],
                ),
              ),
              Positioned(
                bottom: 20,
                left: 20,
                child: Text(
                  '@${shelf['ownerUsername']}',
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          // Shelves and books
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  shelf['shelfName'],
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8),
                Expanded(
                  child: GridView.builder(
                    padding: const EdgeInsets.all(8.0),
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 8,
                      mainAxisSpacing: 8,
                      childAspectRatio: 2 / 3,
                    ),
                    itemCount: shelf['books'].length,
                    itemBuilder: (context, bookIndex) {
                      final book = shelf['books'][bookIndex];
                      return GestureDetector(
                        onTap: () {
                          final currentBook = shelf['books']
                              [bookIndex]; // Get book data from shelf
                          showDialog(
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                                title: Text(currentBook['title']),
                                content: SingleChildScrollView(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                        child: Image.network(
                                          currentBook['cover'] ??
                                              'https://upload.wikimedia.org/wikipedia/commons/thumb/a/ac/No_image_available.svg/1024px-No_image_available.svg.png',
                                          height: 150,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      const SizedBox(height: 16),
                                      Text(
                                        'Author: ${currentBook['author'] ?? 'Unknown Author'}',
                                        style: const TextStyle(
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      const SizedBox(height: 8),
                                      Text(
                                        'Book owner: ${shelf['ownerUsername']}',
                                        style: const TextStyle(
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      const SizedBox(height: 8),
                                      Text(
                                        currentBook['details'] ??
                                            'No additional details available.',
                                      ),
                                    ],
                                  ),
                                ),
                                actions: [
                                  TextButton(
                                    onPressed: () {
                                      Navigator.of(context)
                                          .pop(); // Close dialog
                                    },
                                    child: const Text('Cancel'),
                                  ),
                                  ElevatedButton(
                                    onPressed: () {
                                      // Borrow logic here
                                      print(
                                          'Borrowing ${currentBook['title']}');
                                      Navigator.of(context)
                                          .pop(); // Close dialog
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(
                                        SnackBar(
                                          content: Text(
                                            'You have requested to borrow ${currentBook['title']}',
                                          ),
                                        ),
                                      );
                                    },
                                    child: const Text('Borrow'),
                                  ),
                                ],
                              );
                            },
                          );
                        },
                        child: GridTile(
                          footer: GridTileBar(
                            title: Text(
                              book['title'],
                              textAlign: TextAlign.center,
                              style: const TextStyle(fontSize: 14),
                            ),
                            backgroundColor: Colors.black87,
                          ),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              image: DecorationImage(
                                image: NetworkImage(book['cover']),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
