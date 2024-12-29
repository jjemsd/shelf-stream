import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:shelf_stream/models/book_details.dart';
import 'package:shelf_stream/models/search_result.dart';
import 'package:shelf_stream/screens/book_details_screen_from_search.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  List<SearchResult> searchResult = [
    SearchResult(
      title: 'Title based from search bar 1',
      imageUrl:
          'https://upload.wikimedia.org/wikipedia/commons/thumb/a/ac/No_image_available.svg/450px-No_image_available.svg.png',
      author: 'Sample Author 1',
      details:
          'The Lost Kingdom" is an epic fantasy novel set in the ancient world of Eldoria, where a young prince must reclaim his throne from a treacherous usurper. As he journeys through mystical lands, he discovers powerful allies and dangerous enemies, each with their own hidden motives. With his kingdom on the brink of destruction, the prince must unlock ancient secrets to save his people from a dark force that threatens to consume them all. The Lost Kingdom" is an epic fantasy novel set in the ancient world of Eldoria, where a young prince must reclaim his throne from a treacherous usurper. As he journeys through mystical lands, he discovers powerful allies and dangerous enemies, each with their own hidden motives. With his kingdom on the brink of destruction, the prince must unlock ancient secrets to save his people from a dark force that threatens to consume them all.',
      ownerName: 'Owner here',
    ),
    SearchResult(
      title: 'Title based from search bar 2',
      imageUrl:
          'https://assets.blurb.com/pages/website-assets/lp-homepage/3_Tradebooks-922752db04177f3417c8505ff1970f9d88be19f966cff7ce4654bd85c5073ac3.png',
      author: 'Sample Author 1',
      details: 'dito ang mga detalye',
      ownerName: 'Owner here',
    ),
    SearchResult(
      title: 'Title based from search bar 3',
      // imageUrl: '',
      author: 'Sample Author 1',
      details: 'dito ang mga detalye',
      ownerName: 'Owner here',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: searchResult.length,
        itemBuilder: (BuildContext context, int index) {
          var searches = searchResult[index];
          return Padding(
            padding: const EdgeInsets.only(bottom: 5),
            child: GestureDetector(
              onTap: () {
                Map<String, dynamic> clickedSearchResult = {
                  "title": searches.title,
                  "author": searches.author,
                  "details": searches.details,
                  "owner": searches.ownerName,
                  "image": searches.imageUrl,
                };
                Navigator.of(context).push(
                  CupertinoPageRoute(
                    builder: (builder) => BookDetailsScreenFromSearch(
                      clickedSearchResult: clickedSearchResult,
                    ),
                  ),
                );
              },
              child: ListTile(
                leading: ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: searches.imageUrl == null
                      ? Container(
                          height: 50,
                          width: 50,
                          color: Colors.grey.shade300,
                          child: const Icon(
                            Icons.book,
                            color: Colors.grey,
                          ),
                        )
                      : Image.network(
                          searches.imageUrl!,
                          width: 50,
                          height: 50,
                          fit: BoxFit.cover,
                        ),
                ),
                title: Text(searches.title),
                trailing: Icon(
                  Icons.chevron_right,
                  size: 20,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
