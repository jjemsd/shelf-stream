class BorrowingManager {
  static final List<Map<String, dynamic>> borrowingList = [];

  static void addBook(Map<String, String> book) {
    DateTime borrowDate = DateTime.now();
    DateTime returnDate = borrowDate.add(const Duration(days: 7));

    borrowingList.add({
      ...book,
      'borrowedDate': borrowDate.toIso8601String(),
      'returnDate': returnDate.toIso8601String(),
    });
  }
}
