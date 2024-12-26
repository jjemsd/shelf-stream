class SearchResult {
  late String title;
  late String? imageUrl;
  late String author;
  late String ownerName;
  late String details;

  //late String genre;

  SearchResult({
    required this.title,
    this.imageUrl,
    required this.author,
    required this.ownerName,
    required this.details,
  }); //this.genre}  );
}
