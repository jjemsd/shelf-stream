import 'package:flutter/material.dart';

class BookDetailsScreenFromShelf extends StatefulWidget {
  final Map<String, dynamic> shelf;

  const BookDetailsScreenFromShelf({
    super.key,
    required this.shelf,
  });

  @override
  State<BookDetailsScreenFromShelf> createState() =>
      _BookDetailsScreenFromShelfState();
}

class _BookDetailsScreenFromShelfState
    extends State<BookDetailsScreenFromShelf> {
  @override
  Widget build(BuildContext context) {
    final bookDetails = widget.shelf;

    return Scaffold(
      appBar: AppBar(
        title: Text(bookDetails['title'] ?? 'No Title'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Book Image (natural size, no clipping)
            if (bookDetails['cover'] != null)
              Image.network(
                bookDetails['cover'],
                fit: BoxFit.contain,
                width: 200,
                height: 300,
              )
            else
              Container(
                height: 200,
                width: 200,
                color: Colors.grey.shade300,
                child: const Icon(
                  Icons.book,
                  size: 100,
                  color: Colors.grey,
                ),
              ),
            const SizedBox(height: 20),

            // Title
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                bookDetails['title'] ?? 'No Title',
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 10),

            // Author
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                'Author: ${bookDetails['author'] ?? 'Unknown'}',
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: Colors.grey,
                ),
              ),
            ),
            const SizedBox(height: 10),

            // Owner as TextButton
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: TextButton(
                onPressed: () {
                  print('Owner: ${bookDetails['ownerUsername']}');
                },
                child: Text(
                  'Owner: ${bookDetails['ownerUsername'] ?? 'Unknown'}',
                  style: const TextStyle(
                    fontSize: 16,
                    fontStyle: FontStyle.italic,
                    color: Colors.blue,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),

            // Details
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                bookDetails['details'] ?? 'No details available.',
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 16,
                  height: 1.5,
                ),
              ),
            ),
            const SizedBox(height: 30),

            // Request Borrow Button (Expanding and Rectangular)
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: ElevatedButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content:
                          Text('Request Borrow for ${bookDetails['title']}'),
                    ),
                  );
                  print('Request Borrow for ${bookDetails['title']}');
                  // Add your borrow request logic here
                },
                child: const Text('Request Borrow'),
                style: ElevatedButton.styleFrom(
                  padding:
                      const EdgeInsets.symmetric(vertical: 15, horizontal: 0),
                  textStyle: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                  minimumSize: Size(
                    double.infinity,
                    50,
                  ), // Expands the button to full width
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                        8), // Rectangular shape with rounded corners
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
