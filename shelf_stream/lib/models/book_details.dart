class BookDetails {
  final int? id;
  late String title;
  String? imageUrl;
  late String author;
  int? ownerId;
  String? ownerName;
  String? details;

  BookDetails({
    this.id,
    required this.title,
    this.imageUrl, 
    required this.author,
    this.ownerId,
    this.ownerName,
    this.details,
  });


  Map<String, dynamic> toMap() {
    return {
      'title': title,
      'imageUrl': imageUrl, 
      'author': author,
      'ownerId': ownerId,
      'ownerName': ownerId, 
      'details': details,
    };
  }

  factory BookDetails.fromMap(Map<String, dynamic> map) {
    return BookDetails(
      id: map ['id'],
      title: map['title'],
      imageUrl: map['imageUrl'], 
      author: map['author'],
      ownerId: map['ownerId'],
      ownerName: map['ownerName'],
      details: map['details'],
    );
  }
}
