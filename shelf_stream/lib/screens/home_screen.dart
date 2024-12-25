import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shelf_stream/models/categories.dart';
import 'package:shelf_stream/screens/categories_screen.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Categories> categories = [
    Categories(
      categoryName: 'Fiction',
      imageUrl:
          'https://prod-website-cdn.studysmarter.de/sites/2/uk/Literary-Fiction-Books-dark-min.png',
    ),
    Categories(
      categoryName: 'Non-Fiction',
      imageUrl:
          'https://basmo.app/wp-content/uploads/2022/12/fiction-vs-nonfiction-1024x1024.webp',
    ),
    Categories(
      categoryName: 'Children\'s Books',
      imageUrl:
          'https://raketcontent.com/1_20240915_030812_0000_8d2422d4f4.png',
    ),
    Categories(
      categoryName: 'Poetry',
      imageUrl:
          'https://i.etsystatic.com/12363769/r/il/8d69ab/3593603538/il_570xN.3593603538_592c.jpg',
    ),
    Categories(
      categoryName: 'Academic',
      imageUrl:
          'https://scholarlykitchen.sspnet.org/wp-content/uploads/2017/03/iStock-507071472.jpg',
    ),
    Categories(
      categoryName: 'Romance',
      imageUrl:
          'https://t1.bookpage.com/wp-content/uploads/2022/08/05115116/mostanticipated_romance_IG-1.jpg',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            Text(
              'Categories',
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 20,
              ),
            ),
            Expanded(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  // childAspectRatio: 1,
                  // mainAxisSpacing: 8,
                ),
                itemCount: categories.length,
                itemBuilder: (BuildContext context, int index) {
                  var category = categories[index];
                  return Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                          CupertinoPageRoute(
                            builder: (builder) => BookListScreen(
                              category: category.categoryName,
                            ),
                          ),
                        );
                      },
                      child: GridTile(
                        footer: GridTileBar(
                          title: Text(category.categoryName),
                          backgroundColor: Colors.black87,
                        ),
                        child: category.imageUrl == null
                            ? Container(
                                decoration: const BoxDecoration(
                                  image: DecorationImage(
                                    image: NetworkImage(
                                      'https://upload.wikimedia.org/wikipedia/commons/thumb/a/ac/No_image_available.svg/1024px-No_image_available.svg.png',
                                    ),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              )
                            : Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  image: DecorationImage(
                                    image: NetworkImage(category.imageUrl!),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
