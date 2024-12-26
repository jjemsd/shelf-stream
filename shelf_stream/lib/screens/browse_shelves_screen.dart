import 'package:flutter/material.dart';
import 'package:shelf_stream/screens/view_shelf_screen.dart';

class BrowseShelves extends StatefulWidget {
  const BrowseShelves({super.key});

  @override
  State<BrowseShelves> createState() => _BrowseShelvesState();
}

class _BrowseShelvesState extends State<BrowseShelves> {
  final List<Map<String, dynamic>> shelves = [
    {
      'profilePicture':
          'https://placekitten.com/150/150', // Alternate placeholder
      'shelfName': 'Fiction Paradise',
      'ownerUsername': 'booklover123',
      'shelfCover': 'https://picsum.photos/600/300', // Alternate placeholder
      'books': [
        {
          'title': 'Book A',
          'cover':
              'https://upload.wikimedia.org/wikipedia/commons/thumb/a/ac/No_image_available.svg/1024px-No_image_available.svg.png'
        },
        {
          'title': 'Book B',
          'cover':
              'https://upload.wikimedia.org/wikipedia/commons/thumb/a/ac/No_image_available.svg/1024px-No_image_available.svg.png'
        },
      ],
    },
    {
      'profilePicture': 'https://placekitten.com/150/150',
      'shelfName': 'Mystery Mania',
      'ownerUsername': 'mysteryFan',
      'shelfCover': 'https://picsum.photos/600/300',
      'books': [
        {
          'title': 'Mystery A',
          'cover':
              'https://upload.wikimedia.org/wikipedia/commons/thumb/a/ac/No_image_available.svg/1024px-No_image_available.svg.png'
        },
        {
          'title': 'Mystery B',
          'cover':
              'https://upload.wikimedia.org/wikipedia/commons/thumb/a/ac/No_image_available.svg/1024px-No_image_available.svg.png'
        },
      ],
    },
    {
      'profilePicture': 'https://placekitten.com/150/150',
      'shelfName': 'Sci-Fi Wonders',
      'ownerUsername': 'scifiGeek',
      'shelfCover': 'https://picsum.photos/600/300',
      'books': [
        {
          'title': 'Sci-Fi A',
          'cover':
              'https://upload.wikimedia.org/wikipedia/commons/thumb/a/ac/No_image_available.svg/1024px-No_image_available.svg.png'
        },
        {
          'title': 'Sci-Fi B',
          'cover':
              'https://upload.wikimedia.org/wikipedia/commons/thumb/a/ac/No_image_available.svg/1024px-No_image_available.svg.png'
        },
      ],
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Browse Shelves'),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(8.0),
        itemCount: shelves.length,
        itemBuilder: (context, index) {
          final shelf = shelves[index];
          return Card(
            margin: const EdgeInsets.symmetric(vertical: 8.0),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            clipBehavior: Clip.antiAlias,
            child: Stack(
              alignment: Alignment.center,
              children: [
                // Shelf Cover with Error Handling
                Image.network(
                  shelf['shelfCover']!,
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
                  color: Colors.black.withOpacity(0.5),
                ),
                ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(shelf['profilePicture']!),
                    onBackgroundImageError: (_, __) {
                      // Fallback to default asset if image fails
                    },
                  ),
                  title: Text(
                    shelf['shelfName']!,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Text(
                    'Owner: ${shelf['ownerUsername']}',
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
    );
  }
}
