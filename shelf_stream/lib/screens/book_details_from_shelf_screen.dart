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
        title: Text(
          bookDetails['title'] ?? 'No Title',
          style: const TextStyle(color: Color.fromARGB(255, 32, 58, 98)),
        ),
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: Color.fromARGB(255, 32, 58, 98)),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
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
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                bookDetails['title'] ?? 'No Title',
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 32, 58, 98),
                ),
              ),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                'Author: ${bookDetails['author'] ?? 'Unknown'}',
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: Color.fromARGB(255, 32, 58, 98),
                ),
              ),
            ),
            const SizedBox(height: 10),
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
                    color: Color.fromARGB(255, 32, 58, 98),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                bookDetails['details'] ?? 'No details available.',
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 16,
                  height: 1.5,
                  color: Color.fromARGB(255, 32, 58, 98),
                ),
              ),
            ),
            const SizedBox(height: 30),
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
                },
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  textStyle: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                  backgroundColor: Color.fromARGB(255, 209, 238, 107),
                  foregroundColor: Color.fromARGB(255, 32, 58, 98),
                  minimumSize: const Size(double.infinity, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: const Text('Request Borrow'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
