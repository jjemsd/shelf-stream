import 'package:flutter/material.dart';
import 'package:shelf_stream/data/data.dart';

class BookListScreen extends StatefulWidget {
  const BookListScreen({super.key, required this.category});
  final String category;

  @override
  State<BookListScreen> createState() => _BookListScreenState();
}

class _BookListScreenState extends State<BookListScreen> {
  @override
  Widget build(BuildContext context) {
    List<Map<String, String>> books = bookList;

    List<Map<String, String>> filteredBooks =
        books.where((book) => book['genre'] == widget.category).toList();

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.category),
      ),
      body: ListView.builder(
        itemCount: filteredBooks.length,
        itemBuilder: (context, index) {
          var book = filteredBooks[index];
          return GestureDetector(
            onTap: () {
              showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    title: Text(book['title']!),
                    content: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(8.0),
                          child: Image.network(
                            book['image']!,
                            height: 150,
                            fit: BoxFit.cover,
                          ),
                        ),
                        const SizedBox(height: 16),
                        Text(
                          'Owner: ${book['owner']}',
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 8),
                        Text(book['details']!),
                      ],
                    ),
                    actions: [
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).pop(); // Close dialog
                        },
                        child: const Text('Cancel'),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          // Borrow logic here
                          print('Borrowing ${book['title']}');
                          Navigator.of(context).pop(); // Close dialog
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text(
                                'You have requested to borrow ${book['title']}',
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
            child: Card(
              child: ListTile(
                leading: ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.network(
                    book['image']!,
                    width: 50,
                    height: 50,
                    fit: BoxFit.cover,
                  ),
                ),
                title: Text(book['title']!),
                subtitle: Text('Owner: ${book['owner']}'),
              ),
            ),
          );
        },
      ),
    );
  }
}
