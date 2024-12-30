import 'package:flutter/material.dart';
import 'package:shelf_stream/screens/book_details_from_shelf_screen.dart';
import 'package:shelf_stream/screens/viewProfile_screen.dart';

class ViewShelfScreen extends StatelessWidget {
  final Map<String, dynamic> shelf;

  const ViewShelfScreen({super.key, required this.shelf});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // Header with shelf cover
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
              Positioned.fill(
                child: Center(
                  child: Text(
                    shelf['shelfName']!,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              Positioned(
                bottom: 10,
                left: 16,
                child: TextButton(
                  onPressed: () {
                    // Navigate to ViewProfileScreen when the owner username is clicked
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => ViewProfileScreen(shelf: shelf),
                      ),
                    );
                  },
                  child: Text(
                    shelf['ownerUsername']!,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Expanded(
            child: GridView.builder(
              padding: const EdgeInsets.all(8.0),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 8,
                mainAxisSpacing: 8,
              ),
              itemCount: shelf['books'].length,
              itemBuilder: (context, index) {
                final book = shelf['books'][index];
                return Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: GestureDetector(
                    onTap: () {
                      // Pass the clicked book's data to BookDetailsScreenFromShelf
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => BookDetailsScreenFromShelf(
                            shelf: book, // Passing book data
                          ),
                        ),
                      );
                    },
                    child: GridTile(
                      footer: GridTileBar(
                        title: Text(
                          book['title']!,
                          textAlign: TextAlign.center,
                          style: const TextStyle(fontSize: 14),
                        ),
                        backgroundColor: Colors.black87,
                      ),
                      child: book['cover'] == null
                          ? Container(
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                  image: NetworkImage(
                                    'https://upload.wikimedia.org/wikipedia/commons/thumb/a/ac/No_image_available.svg/1024px-No_image_available.svg.png',
                                  ),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            )
                          : Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                image: DecorationImage(
                                  image: NetworkImage(book['cover']!),
                                  fit: BoxFit.cover,
                                ),
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
    );
  }
}
