import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shelf_stream/data/data.dart';
import 'package:shelf_stream/models/search_result.dart';
import 'package:shelf_stream/screens/book_details_from_search_screen.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  // List<SearchResult> searches = [];
  List<SearchResult> searchResult = [];
  TextEditingController searchController =
      TextEditingController(); 

  @override
  void initState() {
    super.initState();
    searchResult = []; 
  }

  void _searchBooks(String query) {
    if (query.isEmpty) {
      setState(() {
        searchResult = []; 
      });
      return;
    }

    final results = book
        .where((b) {
          return b.title.toLowerCase().contains(query.toLowerCase()) ||
              b.author.toLowerCase().contains(query.toLowerCase());
        })
        .map((b) => SearchResult(
              title: b.title,
              author: b.author,
              details:
                  b.details ?? 'No details available', 
              ownerName: 'Unknown', 
              imageUrl: b.imageUrl,
            ))
        .toList();

    setState(() {
      searchResult =
          results; 
    });
  }
  // setState(() {
  //     searchResult =
  //         qurey; 
  //   });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // title: const Text('Search Books'),
        automaticallyImplyLeading: false,
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(50),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: searchController,
              onChanged: _searchBooks,
              decoration: InputDecoration(
                hintText: 'Search by title or author...',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                suffixIcon: Icon(Icons.search),
              ),
            ),
          ),
        ),
      ),
      body: searchResult.isEmpty
          ? Center(
              child: Text(
                searchController.text.isEmpty
                    ? 'Start typing to search'
                    : 'No results found', 
                style: TextStyle(fontSize: 18, color: Colors.grey),
              ),
            )
          : ListView.builder(
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
                                searches.imageUrl ??
                                    'https://example.com/default_image.png',
                                width: 50,
                                height: 50,
                                fit: BoxFit.cover,
                              ),
                      ),
                      title: Text(searches.title),
                      subtitle: Text(searches.author),
                      trailing: const Icon(
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
