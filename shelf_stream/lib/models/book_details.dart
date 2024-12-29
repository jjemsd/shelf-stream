class BookDetails {
  final int? id;
  late String title;
  String? imageUrl; // Make the image URL nullable (optional)
  late String author;
  int? ownerId;
  String? ownerName;
  String? details;

  BookDetails({
    this.id,
    required this.title,
    this.imageUrl, // Make imageUrl optional
    required this.author,
    this.ownerId,
    this.ownerName,
    this.details,
  });

  // Convert a BookDetails object into a map for database insertion
  Map<String, dynamic> toMap() {
    return {
      'title': title,
      'imageUrl': imageUrl, // Nullable field, will be null if not provided
      'author': author,
      'ownerId': ownerId,
      'ownerName': ownerId, // Nullable field, will be null if not provided
      'details': details,
    };
  }

  // Create a BookDetails object from a map (used when fetching from database)
  factory BookDetails.fromMap(Map<String, dynamic> map) {
    return BookDetails(
      id: map ['id'],
      title: map['title'],
      imageUrl: map['imageUrl'], // This can be null if not present
      author: map['author'],
      ownerId: map['ownerId'],
      ownerName: map['ownerName'],
      details: map['details'],
    );
  }
}
