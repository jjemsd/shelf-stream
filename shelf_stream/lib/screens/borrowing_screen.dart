import 'package:flutter/material.dart';
import 'package:shelf_stream/models/borrowing_model.dart';

class BorrowingList extends StatefulWidget {
  const BorrowingList({super.key});

  @override
  State<BorrowingList> createState() => _BorrowingListState();
}

class _BorrowingListState extends State<BorrowingList> {
  @override
  Widget build(BuildContext context) {
    const textColor = Color.fromARGB(255, 32, 58, 98);
    const buttonColor = Color.fromARGB(255, 209, 238, 107);

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Borrowing List',
          style: TextStyle(color: textColor),
        ),
        backgroundColor: buttonColor,
        elevation: 0,
        toolbarHeight: 70,
      ),
      body: BorrowingManager.borrowingList.isNotEmpty
          ? ListView.builder(
              padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 10),
              itemCount: BorrowingManager.borrowingList.length,
              itemBuilder: (context, index) {
                var book = BorrowingManager.borrowingList[index];
                late DateTime borrowedDate =
                    DateTime.parse(book['borrowedDate']);
                DateTime returnDate = DateTime.parse(book['returnDate']);
                return Container(
                  margin: const EdgeInsets.only(bottom: 16),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black26,
                        blurRadius: 5,
                        offset: Offset(0, 3),
                      ),
                    ],
                  ),
                  child: ListTile(
                    contentPadding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 16),
                    leading: ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.network(
                        book['image']!,
                        width: 60,
                        height: 60,
                        fit: BoxFit.cover,
                      ),
                    ),
                    title: Text(
                      book['title']!,
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: textColor,
                      ),
                    ),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Owner: ${book['owner']}',
                          style: const TextStyle(
                            color: textColor,
                          ),
                        ),
                        Text(
                          'Borrowed Date: ${_formatDate(borrowedDate)}',
                          style: const TextStyle(
                            color: textColor,
                          ),
                        ),
                        Text(
                          'Return Date: ${_formatDate(returnDate)}',
                          style: const TextStyle(
                            color: textColor,
                          ),
                        ),
                      ],
                    ),
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      color: textColor,
                      size: 20,
                    ),
                    onTap: () {
                      // Navigate to book details or perform another action
                    },
                  ),
                );
              },
            )
          : const Center(
              child: Padding(
                padding: EdgeInsets.all(20.0),
                child: Text(
                  'No books borrowed yet.',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: textColor,
                  ),
                ),
              ),
            ),
    );
  }

  String _formatDate(DateTime date) {
    return '${date.year}-${date.month.toString().padLeft(2, '0')}-${date.day.toString().padLeft(2, '0')}';
  }
}
