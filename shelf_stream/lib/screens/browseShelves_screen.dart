import 'package:flutter/material.dart';
import 'package:shelf_stream/data/data.dart';
import 'package:shelf_stream/screens/viewShelf_screen.dart';

class BrowseShelves extends StatefulWidget {
  const BrowseShelves({super.key});

  @override
  State<BrowseShelves> createState() => _BrowseShelvesState();
}

class _BrowseShelvesState extends State<BrowseShelves> {
  TextEditingController searchController = TextEditingController();
  List<Map<String, dynamic>> filteredShelves = [];

  @override
  void initState() {
    super.initState();
    filteredShelves = shelves;
  }

  void _searchShelves(String query) {
    final results = shelves.where((shelf) {
      final shelfName = shelf['shelfName']?.toLowerCase() ?? '';
      final ownerName = shelf['ownerUsername']?.toLowerCase() ?? '';
      return shelfName.contains(query.toLowerCase()) ||
          ownerName.contains(query.toLowerCase());
    }).toList();

    setState(() {
      filteredShelves = results;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: searchController,
              onChanged: _searchShelves,
              decoration: InputDecoration(
                hintText: 'Search by shelf name or owner...',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                suffixIcon: const Icon(Icons.search),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.all(8.0),
              itemCount: filteredShelves.length,
              itemBuilder: (context, index) {
                final shelf = filteredShelves[index];
                return Card(
                  margin: const EdgeInsets.symmetric(vertical: 8.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  clipBehavior: Clip.antiAlias,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Image.network(
                        shelf['shelfCover'] ?? '',
                        fit: BoxFit.cover,
                        height: 150,
                        width: double.infinity,
                        errorBuilder: (context, error, stackTrace) {
                          return Container(
                            height: 150,
                            width: double.infinity,
                            color: Colors.grey.shade300,
                            child: const Icon(
                              Icons.error,
                              size: 50,
                              color: Colors.grey,
                            ),
                          );
                        },
                      ),
                      Container(
                        height: 150,
                        color: Colors.black54,
                      ),
                      ListTile(
                        leading: CircleAvatar(
                          backgroundImage:
                              NetworkImage(shelf['profilePicture'] ?? ''),
                          radius: 50,
                        ),
                        title: Text(
                          shelf['shelfName'] ?? 'Unknown Shelf',
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        subtitle: Text(
                          'Owner: ${shelf['ownerUsername'] ?? 'Unknown'}',
                          style: const TextStyle(
                            color: Colors.white70,
                            fontSize: 14,
                          ),
                        ),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => ViewShelfScreen(shelf: shelf),
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
