import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shelf_stream/models/book_details.dart';
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

  List<BookDetails> book = [
    BookDetails(
      title: 'The Seven Husbands of Evelyn Hugo (Hardcover)',
      ownerName: 'Taylor Jenkins Reid',
      author: 'Author Sample1',
      imageUrl: 'https://m.media-amazon.com/images/I/71KcUgYanhL._SL1500_.jpg',
      details:
          '''The Seven Husbands of Evelyn Hugo is a historical drama novel by American novelist Taylor Jenkins Reid, and published by Atria Books in 2017.
          It tells the story of the fictional Old Hollywood star, Evelyn Hugo, who, at age 79, gives a final interview to unknown journalist, Monique Grant.''',
    ),
    BookDetails(
      title: 'The Book Thief (Kindle Edition)',
      ownerName: 'Markus Zusak',
      author: 'Author Sample2',
      imageUrl:
          'https://m.media-amazon.com/images/I/71Ge374aXuL._UF1000,1000_QL80_.jpghttps://m.media-amazon.com/images/I/71Ge374aXuL._UF1000,1000_QL80_.jpg',
      details: '''
          It is 1939. Nazi Germany. The country is holding its breath. Death has never been busier, and will be busier still.
          By her brother's graveside, Liesel's life is changed when she picks up a single object, partially hidden in the snow. It is The Gravedigger's Handbook, left behind there by accident, and it is her first act of book thievery. So begins a love affair with books and words, as Liesel, with the help of her accordian-playing foster father, learns to read. Soon she is stealing books from Nazi book-burnings, the mayor's wife's library, wherever there are books to be found.
          But these are dangerous times. When Liesel's foster family hides a Jew in their basement, Liesel's world is both opened up, and closed down.
          In superbly crafted writing that burns with intensity, award-winning author Markus Zusak has given us one of the most enduring stories of our time. ''',
    ),
    BookDetails(
      title: 'The Hunger Games (The Hunger Games, #1)',
      ownerName: 'Suzanne Collins',
      author: 'Author Sample3',
      imageUrl:
          'https://m.media-amazon.com/images/I/41pMHc9sepL._AC_UF1000,1000_QL80_.jpg',
      details:
          '''The Hunger Games follows 16-year-old Katniss Everdeen, a girl from District 12 who volunteers for the 74th Hunger Games in place of her younger sister Primrose Everdeen.
             Also selected from District 12 is Peeta Mellark, who once saved Katniss from starvation when they were children. They are mentored by their district's only living victor,
             Haymitch Abernathy, who won 24 years earlier and has since led a solitary life of alcoholism.''',
    ),
    BookDetails(
      title: 'The Name of the Wind (The Kingkiller Chronicle, #1)',
      author: 'Author Sample4',
      ownerName: 'Patrick Rothfuss',
      imageUrl:
          'https://m.media-amazon.com/images/I/91kBQf9rfqL._UF1000,1000_QL80_.jpg',
      details:
          '''Told in Kvothe's own voice, this is the tale of the magically gifted young man who grows to be the most notorious wizard his world has ever seen.

          The intimate narrative of his childhood in a troupe of traveling players, his years spent as a near-feral orphan in a crime-ridden city, his daringly brazen yet successful bid to enter a legendary school of magic, and his life as a fugitive after the murder of a king form a gripping coming-of-age story unrivaled in recent literature.

          A high-action story written with a poet's hand, The Name of the Wind is a masterpiece that will transport readers into the body and mind of a wizard.''',
    ),
    BookDetails(
      title: 'The Book Thief (Kindle Edition)',
      ownerName: 'Erin Morgenstern',
      author: 'Author Sample5',
      imageUrl:
          'https://m.media-amazon.com/images/I/71Ge374aXuL._UF1000,1000_QL80_.jpg',
      details:
          '''The extraordinary, beloved novel about the ability of books to feed the soul even in the darkest of times.

            When Death has a story to tell, you listen.

            It is 1939. Nazi Germany. The country is holding its breath. Death has never been busier, and will become busier still.

            Liesel Meminger is a foster girl living outside of Munich, who scratches out a meager existence for herself by stealing when she encounters something she can’t resist–books. With the help of her accordion-playing foster father, she learns to read and shares her stolen books with her neighbors during bombing raids as well as with the Jewish man hidden in her basement. 

            In superbly crafted writing that burns with intensity, award-winning author Markus Zusak, author of I Am the Messenger, has given us one of the most enduring stories of our time.
            
            “The kind of book that can be life-changing.” —The New York Times
            
            “Deserves a place on the same shelf with The Diary of a Young Girl by Anne Frank.” —USA Today
            ''',
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
              'Recommendations',
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 20,
              ),
            ),
            SizedBox(
              height: 150,
              width: 400,
              child: GridView.builder(
                scrollDirection: Axis.horizontal,
                gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 200,
                  mainAxisSpacing: 8,
                  crossAxisSpacing: 8,
                  childAspectRatio: 1.3,
                ),
                itemCount: book.length,
                itemBuilder: (BuildContext context, int index) {
                  var currentBook = book[index];
                  return Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: GestureDetector(
                      onTap: () {
                        showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              title: Text(currentBook.title),
                              content: SingleChildScrollView(
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(8.0),
                                      child: Image.network(
                                        currentBook.imageUrl!,
                                        height: 150,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    const SizedBox(height: 16),
                                    Text(
                                      'Author: ${currentBook.author}',
                                      style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    const SizedBox(height: 8),
                                    Text(
                                      'Book owner: ${currentBook.ownerName}',
                                      style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    const SizedBox(height: 8),
                                    Text(currentBook.details),
                                  ],
                                ),
                              ),
                              actions: [
                                TextButton(
                                  onPressed: () {
                                    Navigator.of(context).pop(); // Close dialog
                                  },
                                  child: const Text('Cancel'),
                                ),
                                ElevatedButton(
                                  onPressed: () {
                                    // Borrow logic here
                                    print('Borrowing ${currentBook.title}');
                                    Navigator.of(context).pop(); // Close dialog
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(
                                        content: Text(
                                          'You have requested to borrow ${currentBook.title}',
                                        ),
                                      ),
                                    );
                                  },
                                  child: const Text('Borrow'),
                                ),
                              ],
                            );
                          },
                        );
                      },
                      child: GridTile(
                        footer: GridTileBar(
                          title: Text(
                            currentBook.title,
                            style: const TextStyle(
                              fontSize: 12,
                            ),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            softWrap: true,
                          ),
                          backgroundColor: Colors.black87,
                        ),
                        child: currentBook.imageUrl == null
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
                                    image: NetworkImage(currentBook.imageUrl!),
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
            // SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
