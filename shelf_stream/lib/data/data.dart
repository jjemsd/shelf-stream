import 'package:shelf_stream/models/book_details.dart';
import 'package:shelf_stream/models/categories.dart';

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
    imageUrl: 'https://raketcontent.com/1_20240915_030812_0000_8d2422d4f4.png',
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
    author: 'Taylor Jenkins Reid',
    imageUrl: 'https://m.media-amazon.com/images/I/71KcUgYanhL._SL1500_.jpg',
    details:
        '''The Seven Husbands of Evelyn Hugo is a historical drama novel by Taylor Jenkins Reid, published in 2017. It tells the story of the fictional Old Hollywood star Evelyn Hugo, who, at age 79, gives a final interview to unknown journalist, Monique Grant.''',
  ),
  BookDetails(
    title: 'The Book Thief (Kindle Edition)',
    author: 'Markus Zusak',
    imageUrl:
        'https://m.media-amazon.com/images/I/71Ge374aXuL._UF1000,1000_QL80_.jpg',
    details:
        '''It is 1939. Nazi Germany. The country is holding its breath. Death has never been busier, and will be busier still. Liesel Meminger begins stealing books during WWII in Nazi Germany.''',
  ),
  BookDetails(
    title: 'The Hunger Games (The Hunger Games, #1)',
    author: 'Suzanne Collins',
    imageUrl:
        'https://m.media-amazon.com/images/I/41pMHc9sepL._AC_UF1000,1000_QL80_.jpg',
    details:
        '''The Hunger Games follows 16-year-old Katniss Everdeen, who volunteers for the 74th Hunger Games to save her sister.''',
  ),
  BookDetails(
    title: 'The Name of the Wind (The Kingkiller Chronicle, #1)',
    author: 'Patrick Rothfuss',
    imageUrl:
        'https://m.media-amazon.com/images/I/91kBQf9rfqL._UF1000,1000_QL80_.jpg',
    details:
        '''The Name of the Wind tells the story of Kvothe, a young man who grows to be the most notorious wizard his world has ever seen.''',
  ),
  BookDetails(
    title: 'The Help',
    author: 'Kathryn Stockett',
    imageUrl:
        'https://images-na.ssl-images-amazon.com/images/I/71N-g+6guwL._AC_UL210_SR210,210_.jpg',
    details:
        '''The Help is a historical fiction novel about African Americans working in white households in Jackson, Mississippi during the 1960s.''',
  ),
  BookDetails(
    title: 'Water for Elephants',
    author: 'Sara Gruen',
    imageUrl:
        'https://m.media-amazon.com/images/I/71H24-3BgTL._AC_UF1000,1000_QL80_.jpg',
    details:
        '''Water for Elephants is a historical romance novel set in a 20th-century circus.''',
  ),
  BookDetails(
    title: 'The Kite Runner',
    author: 'Khaled Hosseini',
    imageUrl:
        'https://m.media-amazon.com/images/I/81IzbD2IiIL._AC_UF1000,1000_QL80_.jpg',
    details:
        '''The Kite Runner tells the story of Amir, a young boy from Kabul, Afghanistan.''',
  ),
  BookDetails(
    title: 'The Glass Castle',
    author: 'Jeannette Walls',
    imageUrl:
        'https://down-ph.img.susercontent.com/file/8e382b8a22e7d47b6d48b76ffde35136',
    details:
        '''The Glass Castle is a memoir recounting Jeannette Walls' resilient childhood with her dysfunctional family.''',
  ),
  BookDetails(
    title: 'Memoirs of a Geisha',
    author: 'Arthur Golden',
    imageUrl:
        'https://images-na.ssl-images-amazon.com/images/S/compressed.photo.goodreads.com/books/1569487934i/933.jpg',
    details:
        '''Memoirs of a Geisha tells the story of Nitta Sayuri's life as a geisha in Kyoto, Japan.''',
  ),
  BookDetails(
    title: 'The Night Circus',
    author: 'Erin Morgenstern',
    imageUrl:
        'https://upload.wikimedia.org/wikipedia/en/c/c5/TheNightCircus.jpg',
    details:
        '''The Night Circus is a speculative fiction novel with a nonlinear narrative about a magical circus.''',
  ),
];

List<Map<String, dynamic>> shelves = [
  {
    'profilePicture':
        'https://aphrodite.gmanetwork.com/entertainment/photos/photo/pares_overload_queen_diwata_1714277355.jpg', // Alternate placeholder
    'shelfName': 'Books Oberlud',
    'ownerFullName': 'Diwata Paris Oberlud',
    'ownerBio': 'Read books, Eat pares',
    'ownerUsername': 'diwataParis',
    'shelfCover':
        'https://www.shutterstock.com/blog/wp-content/uploads/sites/5/2020/03/Featured-image.jpg', // Alternate placeholder
    'books': [
      {
        'title': 'Soul',
        'author': 'Olivia Wilson',
        'ownerUsername': 'diwataParis',
        'cover':
            'https://marketplace.canva.com/EAFaQMYuZbo/1/0/1003w/canva-brown-rusty-mystery-novel-book-cover-hG1QhA7BiBU.jpg',
        'details':
            'Soul is a novel about a young woman who discovers her true purpose in life.',
      },
      {
        'title': 'Sibika at Kultura',
        'author': 'Carolina P. Danao, et. al.',
        'ownerUsername': 'diwataParis',
        'cover':
            'https://media.karousell.com/media/photos/products/2024/11/14/1996_sibika_at_kultura_grade_4_1731618548_cfade129_progressive.jpg',
      },
    ],
  },
  {
    'profilePicture':
        'https://i.pinimg.com/280x280_RS/03/3d/45/033d4529c2bece796b7f35c031ba441d.jpg',
    'shelfName': 'OtLum Shelf',
    'ownerUsername': 'Mima Otlum',
    'shelfCover':
        'https://thumbs.dreamstime.com/b/old-books-wooden-table-library-vintage-style-ai-generated-content-design-background-instagram-facebook-wall-323974717.jpg',
    'books': [
      {
        'title': 'SHABU: The art of hood love',
        'author': 'Antoinette Sherell',
        'ownerUsername': 'Mima Otlum',
        'cover':
            'https://images-na.ssl-images-amazon.com/images/S/compressed.photo.goodreads.com/books/1676298396i/113464948.jpg',
        'details': 'SHABU is a novel about love.',
      },
      {
        'title': 'SHABU SHABU Recipe',
        'author': 'Mabel Garet',
        'ownerUsername': 'Mima Otlum',
        'cover':
            'https://m.media-amazon.com/images/I/61n9BGjinWL._AC_UF894,1000_QL80_.jpg'
      },
      {
        'title': 'Becoming Michelle Obama',
        'author': 'Unknown',
        'ownerUsername': 'Mima Otlum',
        'cover':
            'https://images-cdn.reedsy.com/discovery/image/2449/image/large_78228f0674f29f84d210c7fc8a11a984f8cc2b34.jpg',
        'details': 'a memoir.',
      },
    ],
  },
  {
    'profilePicture':
        'https://images.genius.com/cd55d599340ab24bfef487789ea7f331.715x715x1.jpg',
    'shelfName': 'Limbics Bouquet',
    'ownerUsername': 'kamador_ng_pinsala',
    'shelfCover':
        'https://m.media-amazon.com/images/I/51KrfLX1OqL._AC_UF1000,1000_QL80_.jpg',
    'books': [
      {
        'title': 'Shut Up, Dionela',
        'author': 'No author information',
        'ownerUsername': 'kamador_ng_pinsala',
        'cover': 'https://m.media-amazon.com/images/I/51T8ECe5+3L.jpg',
        'details': 'Ikaw ang minsan sa palagi',
      },
    ],
  },
  {
    'profilePicture': 'https://i.ytimg.com/vi/GkojmV0FTp0/maxresdefault.jpg',
    'shelfName': 'Boss Liam Classics',
    'ownerUsername': 'bossLiam',
    'shelfCover':
        'https://www.cloud10.it/wp-content/uploads/2022/01/placeholder.png',
    'books': [
      {
        'title': 'Liam Advice',
        'author': 'Unknown',
        'ownerUsername': 'bossLiam',
        'cover':
            'https://m.media-amazon.com/images/I/61Aej7cSYUL._AC_UF1000,1000_QL80_.jpg',
        'details': 'Kung ano ang gusto mo, gawin mo.',
      },
    ],
  },
];

List<Map<String, String>> bookList = [
  {
    'title': 'The Great Gatsby',
    'owner': 'F. Scott Fitzgerald',
    'image':
        'https://upload.wikimedia.org/wikipedia/commons/7/7a/The_Great_Gatsby_Cover_1925_Retouched.jpg',
    'details':
        '''The Great Gatsby is a 1925 novel by American writer F. Scott Fitzgerald. Set in the Jazz Age on Long Island, near New York City, the novel depicts first-person narrator Nick Carraway's interactions with Jay Gatsby, the mysterious millionaire with an obsession to reunite with his former lover, Daisy Buchanan.''',
    'genre': 'Fiction',
  },
  {
    'title': 'The Immortal Life of Henrietta Lacks',
    'owner': 'Rebecca Skloot',
    'image':
        'https://upload.wikimedia.org/wikipedia/en/5/5f/The_Immortal_Life_Henrietta_Lacks_%28cover%29.jpg',
    'details':
        '''The Immortal Life of Henrietta Lacks is a non-fiction book by American author Rebecca Skloot. It was the 2011 winner of the National Academies Communication Award for best creative work that helps the public understanding of topics in science, engineering or medicine.''',
    'genre': 'Non-Fiction',
  },
  {
    'title': 'The Catcher in the Rye',
    'owner': 'J.D. Salinger',
    'image':
        'https://upload.wikimedia.org/wikipedia/commons/thumb/8/89/The_Catcher_in_the_Rye_%281951%2C_first_edition_cover%29.jpg/640px-The_Catcher_in_the_Rye_%281951%2C_first_edition_cover%29.jpg',
    'details':
        '''The Catcher in the Rye is a novel by American author J. D. Salinger that was partially published in serial form in 1945–46 before being novelized in 1951. Originally intended for adults, it is often read by adolescents for its themes of angst and alienation, and as a critique of superficiality in society.''',
    'genre': 'Fiction',
  },
  {
    'title': 'One Hundred Years of Solitude',
    'owner': 'Gabriel García Márquez',
    'image': 'https://m.media-amazon.com/images/I/71WQQjgEhQL.jpg',
    'details':
        '''One Hundred Years of Solitude is a 1967 novel by Colombian author Gabriel García Márquez that tells the multi-generational story of the Buendía family, whose patriarch, José Arcadio Buendía, founded the fictitious town of Macondo. The novel is often cited as one of the supreme achievements in world literature.''',
    'genre': 'Fiction',
  },
  {
    'title': '1984',
    'owner': 'George Orwell',
    'image': 'https://images.booksense.com/images/935/524/9780451524935.jpg',
    'details':
        '''1984 is a dystopian novel set in a totalitarian regime where the government, led by Big Brother, controls every aspect of life. The protagonist, Winston Smith, dares to resist the oppressive state.''',
    'genre': 'Fiction',
  },
  {
    'title': 'To Kill a Mockingbird',
    'owner': 'Harper Lee',
    'image':
        'https://cdn.britannica.com/21/182021-050-666DB6B1/book-cover-To-Kill-a-Mockingbird-many-1961.jpg',
    'details':
        '''To Kill a Mockingbird, written by Harper Lee, is a classic American novel that tackles themes of racism, morality, and justice in the Deep South during the 1930s, seen through the eyes of a young girl named Scout Finch.''',
    'genre': 'Fiction',
  },
  {
    'title': 'The Catcher in the Rye',
    'owner': 'J.D. Salinger',
    'image':
        'https://upload.wikimedia.org/wikipedia/commons/thumb/8/89/The_Catcher_in_the_Rye_%281951%2C_first_edition_cover%29.jpg/640px-The_Catcher_in_the_Rye_%281951%2C_first_edition_cover%29.jpg',
    'details':
        '''The Catcher in the Rye is a novel by J.D. Salinger about a teenager named Holden Caulfield who navigates the struggles of adolescence and societal expectations.''',
    'genre': 'Fiction',
  },
  {
    'title': 'Brave New World',
    'owner': 'Aldous Huxley',
    'image':
        'https://m.media-amazon.com/images/I/917t3Joq2WL._AC_UF894,1000_QL80_.jpg',
    'details':
        '''Brave New World is a dystopian novel set in a future where society is technologically advanced but emotionally hollow, as citizens are conditioned to live in a world of superficial pleasure.''',
    'genre': 'Fiction',
  },
  {
    'title': 'Moby-Dick',
    'owner': 'Herman Melville',
    'image':
        'https://m.media-amazon.com/images/I/610qaD5PskL._AC_UF1000,1000_QL80_.jpg',
    'details':
        '''Moby-Dick is an 1851 novel by Herman Melville. It tells the story of Ishmael, a sailor on the whaling ship Pequod, led by Captain Ahab, who is obsessed with hunting the elusive white whale, Moby Dick.''',
    'genre': 'Fiction',
  },
  {
    'title': 'The Hobbit',
    'owner': 'J.R.R. Tolkien',
    'image':
        'https://upload.wikimedia.org/wikipedia/en/a/a9/The_Hobbit_trilogy_dvd_cover.jpg',
    'details':
        '''The Hobbit is a fantasy novel by J.R.R. Tolkien, following the adventures of Bilbo Baggins, a hobbit who is swept into a quest to reclaim treasure guarded by a dragon named Smaug.''',
    'genre': 'Fiction',
  },
  {
    'title': 'The Lord of the Rings: The Fellowship of the Ring',
    'owner': 'J.R.R. Tolkien',
    'image':
        'https://m.media-amazon.com/images/M/MV5BNzIxMDQ2YTctNDY4MC00ZTRhLTk4ODQtMTVlOWY4NTdiYmMwXkEyXkFqcGc@._V1_.jpg',
    'details':
        '''The Fellowship of the Ring is the first book in J.R.R. Tolkien's epic fantasy trilogy, The Lord of the Rings. It tells the story of Frodo Baggins, who must destroy the One Ring to prevent the dark lord Sauron from conquering Middle-earth.''',
    'genre': 'Fiction',
  },
  {
    'title': 'Crime and Punishment',
    'owner': 'Fyodor Dostoevsky',
    'image':
        'https://images-na.ssl-images-amazon.com/images/S/compressed.photo.goodreads.com/books/1537559393i/23398716.jpg',
    'details':
        '''Crime and Punishment is a psychological novel by Fyodor Dostoevsky, exploring the moral dilemmas and guilt of a young student, Raskolnikov, who commits a murder.''',
    'genre': 'Fiction',
  },
  {
    'title': 'Pride and Prejudice',
    'owner': 'Jane Austen',
    'image':
        'https://m.media-amazon.com/images/M/MV5BMTA1NDQ3NTcyOTNeQTJeQWpwZ15BbWU3MDA0MzA4MzE@._V1_.jpg',
    'details':
        '''Pride and Prejudice is a classic novel by Jane Austen, telling the story of Elizabeth Bennet, who navigates societal pressures, love, and family dynamics in early 19th-century England.''',
    'genre': 'Fiction',
  },
  {
    'title': 'The Brothers Karamazov',
    'owner': 'Fyodor Dostoevsky',
    'image':
        'https://www.ubuy.com.ph/productimg/?image=aHR0cHM6Ly9pbWFnZXMtbmEuc3NsLWltYWdlcy1hbWF6b24uY29tL2ltYWdlcy9JLzQxZ0FrNHNhNXFMLl9TUzQwMF8uanBn.jpg',
    'details':
        '''The Brothers Karamazov is a philosophical novel by Fyodor Dostoevsky, exploring themes of faith, morality, and free will through the lives of three brothers.''',
    'genre': 'Fiction',
  },
  {
    'title': 'The Picture of Dorian Gray',
    'owner': 'Oscar Wilde',
    'image': 'https://i.ebayimg.com/images/g/m~YAAOSwHm9iSVC1/s-l1200.jpg',
    'details':
        '''The Picture of Dorian Gray is a philosophical novel by Oscar Wilde, exploring themes of vanity, morality, and the consequences of a hedonistic life, through the story of Dorian Gray, whose portrait ages while he remains young.''',
    'genre': 'Fiction',
  },
  {
    'title': 'The Odyssey',
    'owner': 'Homer',
    'image': 'https://m.media-amazon.com/images/I/A1JR2oK-orL.jpg',
    'details':
        '''The Odyssey is an ancient Greek epic poem by Homer, detailing the adventures of Odysseus as he attempts to return home from the Trojan War, facing gods, monsters, and numerous trials.''',
    'genre': 'Fiction',
  },
  {
    'title': 'Wuthering Heights',
    'owner': 'Emily Brontë',
    'image':
        'https://cdn.kobo.com/book-images/002f669b-cc2e-4ccf-b78e-c969d456620c/1200/1200/False/wuthering-heights-124.jpg',
    'details':
        '''Wuthering Heights is a gothic novel by Emily Brontë, centered around the passionate and destructive love between Heathcliff and Catherine Earnshaw.''',
    'genre': 'Fiction',
  },
  {
    'title': 'Jane Eyre',
    'owner': 'Charlotte Brontë',
    'image': 'https://m.media-amazon.com/images/I/71YfAAiPYpS._SL1500_.jpg',
    'details':
        '''Jane Eyre is a novel by Charlotte Brontë about a strong-willed orphan who becomes a governess and falls in love with her employer, Mr. Rochester, uncovering dark secrets about his past.''',
    'genre': 'Fiction',
  },
  {
    'title': 'The Shining',
    'owner': 'Stephen King',
    'image':
        'https://upload.wikimedia.org/wikipedia/commons/0/09/The_Shining_%281977%29_front_cover%2C_first_edition.jpg',
    'details':
        '''The Shining is a horror novel by Stephen King, following the story of Jack Torrance, an aspiring writer and winter caretaker of the Overlook Hotel, where his sanity unravels.''',
    'genre': 'Fiction',
  },
  {
    'title': 'Sapiens: A Brief History of Humankind',
    'owner': 'Yuval Noah Harari',
    'image':
        'https://www.nationalbookstore.com/59499-large_default/sapiens-a-brief-history-of-humankind-trade-paperback-by-yuval-noah-harari.jpg',
    'details':
        '''Sapiens explores the history of humanity, from the emergence of Homo sapiens to the present day, examining how biology, culture, and technology have shaped our evolution.''',
    'genre': 'Non-Fiction',
  },
  {
    'title': 'Educated',
    'owner': 'Tara Westover',
    'image':
        'https://cdn.kobo.com/book-images/98600784-e6d0-4434-91e2-be7863fea7d4/1200/1200/False/educated-2.jpg',
    'details':
        '''Educated is a memoir by Tara Westover, recounting her journey from growing up in a strict, survivalist family to earning a doctorate from the University of Cambridge.''',
    'genre': 'Non-Fiction',
  },
  {
    'title': 'Becoming',
    'owner': 'Michelle Obama',
    'image': 'https://m.media-amazon.com/images/I/81cJTmFpG-L.jpg',
    'details':
        '''Becoming is a memoir by Michelle Obama, exploring her life from her childhood in Chicago to her years as the First Lady of the United States.''',
    'genre': 'Non-Fiction',
  },
  {
    'title':
        "Quiet: The Power of Introverts in a World That Can't Stop Talking",
    'owner': 'Susan Cain',
    'image':
        'https://cdn.kobo.com/book-images/99541dec-d3cb-4a31-91e6-a5824acf9c09/1200/1200/False/quiet-the-power-of-introverts-in-a-world-that-can-t-stop-talking-1.jpg',
    'details':
        '''Quiet examines the role introverts play in society and the value of introverted traits, challenging the common emphasis on extroversion in modern culture.''',
    'genre': 'Non-Fiction',
  },
  {
    'title': 'The Wright Brothers',
    'owner': 'David McCullough',
    'image':
        'https://m.media-amazon.com/images/I/71TYHByzngL._AC_UF1000,1000_QL80_.jpg',
    'details':
        '''The Wright Brothers by David McCullough tells the inspiring story of Orville and Wilbur Wright's journey to inventing and flying the first successful airplane.''',
    'genre': 'Non-Fiction',
  },
  {
    'title': 'Outliers: The Story of Success',
    'owner': 'Malcolm Gladwell',
    'image':
        'https://upload.wikimedia.org/wikipedia/en/e/ec/Outliers_%28book_cover%29.png',
    'details':
        '''Outliers examines the factors that contribute to high levels of success, arguing that talent alone is not enough, and opportunity, culture, and timing play major roles.''',
    'genre': 'Non-Fiction',
  },
  {
    'title': 'The Diary of a Young Girl',
    'owner': 'Anne Frank',
    'image':
        'https://images-na.ssl-images-amazon.com/images/S/compressed.photo.goodreads.com/books/1560816565i/48855.jpg',
    'details':
        '''The Diary of a Young Girl is the wartime journal of Anne Frank, a Jewish girl hiding from the Nazis during World War II, offering a poignant and personal view of history.''',
    'genre': 'Non-Fiction',
  },
  {
    'title': 'Into the Wild',
    'owner': 'Jon Krakauer',
    'image':
        'https://m.media-amazon.com/images/M/MV5BNTgwZTJhNWMtNzVjMy00YzQzLWI4MTAtYmJhOGQ5ZmQ3MDM0XkEyXkFqcGc@._V1_FMjpg_UX1000_.jpg',
    'details':
        '''Into the Wild tells the story of Chris McCandless, a young man who gave up his possessions to live in the Alaskan wilderness, and the ultimate consequences of his journey.''',
    'genre': 'Non-Fiction',
  },
  {
    'title': 'The Glass Castle',
    'owner': 'Jeannette Walls',
    'image':
        'https://m.media-amazon.com/images/M/MV5BMTY2Nzk0MDE3Nl5BMl5BanBnXkFtZTgwOTI0ODc0MjI@._V1_.jpg',
    'details':
        '''The Glass Castle is a memoir about Jeannette Walls' unconventional and often difficult childhood, marked by poverty, neglect, and resilience.''',
    'genre': 'Non-Fiction',
  },
  {
    'title': 'The Immune System Recovery Plan',
    'owner': 'Susan Blum',
    'image': 'https://m.media-amazon.com/images/I/41yrXMCj6bL._SY200_QL15_.jpg',
    'details':
        '''The Immune System Recovery Plan offers a holistic approach to strengthening the immune system through diet, exercise, and stress management.''',
    'genre': 'Non-Fiction',
  },
  {
    'title': 'A Brief History of Time',
    'owner': 'Stephen Hawking',
    'image':
        'https://upload.wikimedia.org/wikipedia/en/a/a3/BriefHistoryTime.jpg',
    'details':
        '''A Brief History of Time explores complex concepts in cosmology and theoretical physics, such as black holes, time travel, and the nature of the universe.''',
    'genre': 'Non-Fiction',
  },
  {
    'title': 'Freakonomics',
    'owner': 'Steven D. Levitt and Stephen J. Dubner',
    'image':
        'https://www.nationalbookstore.com/178107-thickbox_default/freakonomics-new-edition.jpg',
    'details':
        '''Freakonomics uses economics to explore a variety of real-world phenomena, revealing surprising insights into human behavior and decision-making.''',
    'genre': 'Non-Fiction',
  },
  {
    'title': 'The Power of Habit',
    'owner': 'Charles Duhigg',
    'image':
        'https://m.media-amazon.com/images/I/51DlFWryDyL._AC_SY200_QL15_.jpg',
    'details':
        '''The Power of Habit explores how habits are formed, how they can be changed, and how understanding habits can lead to personal and professional success.''',
    'genre': 'Non-Fiction',
  },
  {
    'title': 'When Breath Becomes Air',
    'owner': 'Paul Kalanithi',
    'image':
        'https://images-na.ssl-images-amazon.com/images/S/compressed.photo.goodreads.com/books/1482891316i/29779231.jpg',
    'details':
        '''When Breath Becomes Air is a memoir by Paul Kalanithi, a neurosurgeon diagnosed with terminal cancer, reflecting on life, death, and the meaning of existence.''',
    'genre': 'Non-Fiction',
  },
  {
    'title': 'The Subtle Art of Not Giving a F*ck',
    'owner': 'Mark Manson',
    'image':
        'https://www.nationalbookstore.com/97619-large_default/the-subtle-art-of-not-giving-a-fck-.jpg',
    'details':
        '''The Subtle Art of Not Giving a F*ck challenges conventional wisdom on happiness and success, advocating for focusing on what truly matters in life.''',
    'genre': 'Non-Fiction',
  },
  {
    'title': 'How to Win Friends and Influence People',
    'owner': 'Dale Carnegie',
    'image':
        'https://images-na.ssl-images-amazon.com/images/S/compressed.photo.goodreads.com/books/1442726934i/4865.jpg',
    'details':
        '''How to Win Friends and Influence People offers timeless advice on improving social skills, building relationships, and influencing others positively.''',
    'genre': 'Non-Fiction',
  },
  {
    'title': 'The Art of Happiness',
    'owner': 'Dalai Lama and Howard Cutler',
    'image':
        'https://upload.wikimedia.org/wikipedia/en/e/ee/The_Art_of_Happiness.jpg',
    'details':
        '''The Art of Happiness offers insights into how to achieve lasting happiness through mental discipline, perspective, and compassion.''',
    'genre': 'Non-Fiction',
  },
  {
    'title': 'The Code Book',
    'owner': 'Simon Singh',
    'image': 'https://upload.wikimedia.org/wikipedia/en/0/06/The_Code_Book.jpg',
    'details':
        '''The Code Book explores the history of cryptography, from ancient ciphers to modern encryption methods, and the role of codebreakers in shaping world events.''',
    'genre': 'Non-Fiction',
  },
  {
    'title': 'Where the Wild Things Are',
    'owner': 'Maurice Sendak',
    'image':
        'https://upload.wikimedia.org/wikipedia/en/8/8d/Where_The_Wild_Things_Are_%28book%29_cover.jpg',
    'details':
        '''Where the Wild Things Are is a beloved children's book that follows Max, a young boy who sails to a mysterious island and encounters wild creatures, where he becomes their king.''',
    'genre': "Children's Books",
  },
  {
    'title': 'The Very Hungry Caterpillar',
    'owner': 'Eric Carle',
    'image':
        'https://cdn.kobo.com/book-images/24685bb1-d333-46e5-b8ea-01b8c1d53c61/1200/1200/False/the-very-hungry-caterpillar-1.jpg',
    'details':
        '''The Very Hungry Caterpillar tells the story of a caterpillar who eats through a variety of foods before finally becoming a butterfly. Its colorful illustrations are perfect for young children.''',
    'genre': "Children's Books",
  },
  {
    'title': 'Goodnight Moon',
    'owner': 'Margaret Wise Brown',
    'image': 'https://upload.wikimedia.org/wikipedia/en/5/51/Goodnightmoon.jpg',
    'details':
        '''Goodnight Moon is a classic bedtime story where a little bunny says goodnight to everything in his room, creating a soothing atmosphere for young readers.''',
    'genre': "Children's Books",
  },
  {
    'title': 'The Cat in the Hat',
    'owner': 'Dr. Seuss',
    'image':
        'https://upload.wikimedia.org/wikipedia/en/1/10/The_Cat_in_the_Hat.png',
    'details':
        '''The Cat in the Hat follows the misadventures of two children who are visited by a mischievous cat, bringing chaos into their home while teaching them the joy of imagination.''',
    'genre': "Children's Books",
  },
  {
    'title': "Harry Potter and the Sorcerer's Stone",
    'owner': 'J.K. Rowling',
    'image':
        'https://images-na.ssl-images-amazon.com/images/S/compressed.photo.goodreads.com/books/1598823299i/42844155.jpg',
    'details':
        '''Harry Potter and the Sorcerer's Stone introduces young Harry Potter, an orphan who discovers he's a wizard and embarks on a magical adventure at Hogwarts School of Witchcraft and Wizardry.''',
    'genre': "Children's Books",
  },
  {
    'title': "Charlotte's Web",
    'owner': 'E.B. White',
    'image':
        'https://images-na.ssl-images-amazon.com/images/S/compressed.photo.goodreads.com/books/1628267712i/24178.jpg',
    'details':
        '''Charlotte's Web tells the heartwarming story of the friendship between a pig named Wilbur and a clever spider named Charlotte, as she saves him from being slaughtered.''',
    'genre': "Children's Books",
  },
  {
    'title': 'The Giving Tree',
    'owner': 'Shel Silverstein',
    'image':
        'https://media.newyorker.com/photos/59095e8f1c7a8e33fb38c52d/master/pass/Margalit-The-Giving-Tree.jpg',
    'details':
        '''The Giving Tree is a touching story about the relationship between a tree and a boy, teaching valuable lessons about selflessness, love, and generosity.''',
    'genre': "Children's Books",
  },
  {
    'title': 'Winnie-the-Pooh',
    'owner': 'A.A. Milne',
    'image': 'https://m.media-amazon.com/images/I/61yh3EESrqL.jpg',
    'details':
        '''Winnie-the-Pooh is the delightful story of Pooh Bear and his friends in the Hundred Acre Wood, full of adventures and life lessons for young readers.''',
    'genre': "Children's Books",
  },
  {
    'title': 'Matilda',
    'owner': 'Roald Dahl',
    'image':
        'https://m.media-amazon.com/images/M/MV5BZGMwZDcyZGYtNjU3Yy00YTk2LWFhMDUtMTI5MTEzY2E0OTRmXkEyXkFqcGc@._V1_.jpg',
    'details':
        '''Matilda is a brilliant young girl with a challenging family life, but with her intelligence and special powers, she eventually finds a way to change her world for the better.''',
    'genre': "Children's Books",
  },
  {
    'title': 'The Polar Express',
    'owner': 'Chris Van Allsburg',
    'image':
        'https://images-na.ssl-images-amazon.com/images/S/compressed.photo.goodreads.com/books/1638557399i/420282.jpg',
    'details':
        '''The Polar Express is a Christmas classic about a young boy who takes a magical train ride to the North Pole, learning about the true spirit of Christmas along the way.''',
    'genre': "Children's Books",
  },
  {
    'title': 'The Little Engine That Could',
    'owner': 'Watty Piper',
    'image':
        'https://m.media-amazon.com/images/M/MV5BNjE1YWE1NzYtMThjYi00NTcyLWIyYjItYTZiYzY0NzNhZDMzXkEyXkFqcGc@._V1_.jpg',
    'details':
        '''The Little Engine That Could is a beloved story about a determined little train that overcomes challenges and teaches children the value of perseverance and optimism.''',
    'genre': "Children's Books",
  },
  {
    'title': "Alice's Adventures in Wonderland",
    'owner': 'Lewis Carroll',
    'image':
        'https://cdn.kobo.com/book-images/2d7c3130-d913-4156-a557-d1d4ea9445d5/1200/1200/False/alice-s-adventures-in-wonderland-revised-and-illustrated.jpg',
    'details':
        '''Alice's Adventures in Wonderland follows a young girl named Alice as she falls down a rabbit hole and embarks on a surreal adventure in a whimsical world of strange creatures and curious events.''',
    'genre': "Children's Books",
  },
  {
    'title': 'Pippi Longstocking',
    'owner': 'Astrid Lindgren',
    'image':
        'https://upload.wikimedia.org/wikipedia/en/thumb/7/78/L%C3%A5ngstrump_G%C3%A5r_Ombord.jpeg/220px-L%C3%A5ngstrump_G%C3%A5r_Ombord.jpeg',
    'details':
        '''Pippi Longstocking is the story of an eccentric and strong-willed girl who lives in a house with her horse and monkey, teaching children about independence and fun.''',
    'genre': "Children's Books",
  },
  {
    'title': 'Anne of Green Gables',
    'owner': 'L.M. Montgomery',
    'image':
        'https://m.media-amazon.com/images/M/MV5BMGFjNGEzNjItZjU3Ny00MjM2LWJhOWEtMmFiOTQyY2U3YjExXkEyXkFqcGc@._V1_FMjpg_UX1000_.jpg',
    'details':
        '''Anne of Green Gables follows the adventures of Anne Shirley, an imaginative orphan who is adopted by a brother and sister in the rural village of Avonlea.''',
    'genre': "Children's Books",
  },
  {
    'title': 'The Secret Garden',
    'owner': 'Frances Hodgson Burnett',
    'image':
        'https://m.media-amazon.com/images/M/MV5BNjgyMGI3OTQtYWFjOS00OGNkLTg4NTktMDI4ZWMwODk5ODU5XkEyXkFqcGc@._V1_.jpg',
    'details':
        '''The Secret Garden tells the story of Mary Lennox, a lonely girl who discovers a secret garden and transforms it—and her life—through care, love, and friendship.''',
    'genre': "Children's Books",
  },
  {
    'title': 'The Adventures of Tom Sawyer',
    'owner': 'Mark Twain',
    'image': 'https://m.media-amazon.com/images/I/71l6aEDzaFS._SL1500_.jpg',
    'details':
        '''The Adventures of Tom Sawyer follows the mischievous and adventurous Tom as he navigates life, friendship, and growing up in the fictional town of St. Petersburg.''',
    'genre': "Children's Books",
  },
  {
    'title': 'Charlie and the Chocolate Factory',
    'owner': 'Roald Dahl',
    'image':
        'https://m.media-amazon.com/images/M/MV5BNjcxMjg1Njg2NF5BMl5BanBnXkFtZTcwMjQ4NzMzMw@@._V1_FMjpg_UX1000_.jpg',
    'details':
        '''Charlie and the Chocolate Factory is a whimsical story about Charlie Bucket, a poor boy who wins a golden ticket to tour Willy Wonka’s mysterious chocolate factory, filled with strange and magical wonders.''',
    'genre': "Children's Books",
  },
  {
    'title': 'The BFG',
    'owner': 'Roald Dahl',
    'image':
        'https://upload.wikimedia.org/wikipedia/en/b/b2/The_BFG_%28Dahl_novel_-_cover_art%29.jpg',
    'details':
        '''The BFG tells the story of Sophie, a young girl, and the Big Friendly Giant as they try to stop the other giants from eating children and bring them to justice.''',
    'genre': "Children's Books",
  },
  {
    'title': 'The Wonderful Wizard of Oz',
    'owner': 'L. Frank Baum',
    'image':
        'https://images-na.ssl-images-amazon.com/images/S/compressed.photo.goodreads.com/books/1398003737i/236093.jpg',
    'details':
        '''The Wonderful Wizard of Oz tells the story of Dorothy, who is swept away by a tornado to the magical land of Oz, where she meets memorable characters and learns about bravery, friendship, and home.''',
    'genre': 'Children\'s Books',
  },
  {
    'title': 'The Waste Land',
    'owner': 'T.S. Eliot',
    'image':
        'https://upload.wikimedia.org/wikipedia/commons/thumb/3/39/The_waste_land%281922%29Eliot_Boni.djvu/page1-1200px-The_waste_land%281922%29Eliot_Boni.djvu.jpg',
    'details':
        '''The Waste Land is one of the most influential works of modernist poetry, exploring themes of disillusionment, fragmentation, and despair in the aftermath of World War I.''',
    'genre': 'Poetry',
  },
  {
    'title': 'Milk and Honey',
    'owner': 'Rupi Kaur',
    'image':
        'https://down-ph.img.susercontent.com/file/ph-11134207-7r98o-lvtm8jq37ems88',
    'details':
        '''Milk and Honey is a collection of poems exploring themes of love, loss, trauma, and healing. It resonates with readers for its simple yet powerful language and emotional depth.''',
    'genre': 'Poetry',
  },
  {
    'title': 'The Raven and Other Poems',
    'owner': 'Edgar Allan Poe',
    'image':
        'https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1632080446l/269322.jpg',
    'details':
        '''The Raven and Other Poems features Edgar Allan Poe's most famous poem, "The Raven," along with his dark and haunting works on death, love, and melancholy.''',
    'genre': 'Poetry',
  },
  {
    'title': 'Ariel',
    'owner': 'Sylvia Plath',
    'image':
        'https://images-na.ssl-images-amazon.com/images/S/compressed.photo.goodreads.com/books/1442258738i/395090.jpg',
    'details':
        '''Ariel is a collection of Sylvia Plath's poems, showcasing her intense personal struggles, emotions, and the themes of death, mental illness, and identity.''',
    'genre': 'Poetry',
  },
  {
    'title': 'The Essential Rumi',
    'owner': 'Rumi, translated by Coleman Barks',
    'image':
        'https://images-na.ssl-images-amazon.com/images/S/compressed.photo.goodreads.com/books/1391414844i/304079.jpg',
    'details':
        '''The Essential Rumi is a collection of poems from the 13th-century Persian poet Rumi, known for his mystical and spiritual verses on love, connection, and the nature of the soul.''',
    'genre': 'Poetry',
  },
  {
    'title': 'Leaves of Grass',
    'owner': 'Walt Whitman',
    'image':
        'https://m.media-amazon.com/images/I/71ZUAQQ-9IL._AC_UF1000,1000_QL80_.jpg',
    'details':
        '''Leaves of Grass is Walt Whitman’s collection that celebrates individuality, democracy, nature, and the human spirit, using free verse to explore universal themes.''',
    'genre': 'Poetry',
  },
  {
    'title': 'The Sun and Her Flowers',
    'owner': 'Rupi Kaur',
    'image':
        'https://images-na.ssl-images-amazon.com/images/S/compressed.photo.goodreads.com/books/1499791446i/35606560.jpg',
    'details':
        '''The Sun and Her Flowers is Rupi Kaur’s second poetry collection, continuing her exploration of love, trauma, self-discovery, and growth, with beautiful, heartfelt language.''',
    'genre': 'Poetry',
  },
  {
    'title': 'The Prophet',
    'owner': 'Kahlil Gibran',
    'image':
        'https://upload.wikimedia.org/wikipedia/commons/8/8a/The_Prophet_%28Gibran%29.jpg',
    'details':
        '''The Prophet is a philosophical and spiritual work containing 26 poetic essays that explore themes of life, love, work, and freedom, offering wisdom on how to live meaningfully.''',
    'genre': 'Poetry',
  },
  {
    'title': 'The Colossus',
    'owner': 'Sylvia Plath',
    'image':
        'https://images-na.ssl-images-amazon.com/images/S/compressed.photo.goodreads.com/books/1403184758i/11627.jpg',
    'details':
        '''The Colossus is Sylvia Plath’s first poetry collection, featuring poems that delve into themes of personal suffering, identity, and the struggle for personal meaning.''',
    'genre': 'Poetry',
  },
  {
    'title': 'Selected Poems',
    'owner': 'William Blake',
    'image':
        'https://images-na.ssl-images-amazon.com/images/S/compressed.photo.goodreads.com/books/1491892774i/34837595.jpg',
    'details':
        '''William Blake’s Selected Poems offer a glimpse into his visionary, often mystical works that blend poetry with visual art, addressing themes of innocence, experience, and spirituality.''',
    'genre': 'Poetry',
  },
  {
    'title': 'Milk and Honey',
    'owner': 'Rupi Kaur',
    'image':
        'https://cdn.kobo.com/book-images/26387392-23c7-452d-8431-6fb2764f8bfe/1200/1200/False/milk-and-honey-9.jpg',
    'details':
        '''Rupi Kaur's Milk and Honey explores trauma, healing, and love in simple, deeply emotional poetry. Her work connects with readers through relatable experiences.''',
    'genre': 'Poetry',
  },
  {
    'title': 'Poems',
    'owner': 'Emily Dickinson',
    'image':
        'https://www.photory.app/_next/static/images/Emily%20Dickinson%20short%20poem-7d0d8618bc38647fc9277b34e96338cc.jpg',
    'details':
        '''Emily Dickinson’s Poems cover a wide range of subjects, from death and immortality to nature, often reflecting on life’s mysteries with sharp, concise verse.''',
    'genre': 'Poetry',
  },
  {
    'title': 'Howl',
    'owner': 'Allen Ginsberg',
    'image':
        'https://images-na.ssl-images-amazon.com/images/S/compressed.photo.goodreads.com/books/1668784961i/6295.jpg',
    'details':
        '''Howl is Allen Ginsberg’s groundbreaking and controversial poem that became a manifesto for the Beat Generation, filled with raw emotion and social critique.''',
    'genre': 'Poetry',
  },
  {
    'title': 'The Penguin Anthology of Twentieth-Century American Poetry',
    'owner': 'Rita Dove (Editor)',
    'image': 'https://m.media-amazon.com/images/I/61iCLZgv2bL.jpg',
    'details':
        '''The Penguin Anthology of Twentieth-Century American Poetry is a comprehensive collection of some of the best American poetry of the 20th century, showcasing diverse voices and perspectives.''',
    'genre': 'Poetry',
  },
  {
    'title': 'A Coney Island of the Mind',
    'owner': 'Lawrence Ferlinghetti',
    'image':
        'https://m.media-amazon.com/images/I/718PV9hL9wL._AC_UF1000,1000_QL80_.jpg',
    'details':
        '''A Coney Island of the Mind is a collection of Lawrence Ferlinghetti's poems, reflecting the Beat Generation's spirit with a mix of personal reflection, surrealism, and social commentary.''',
    'genre': 'Poetry',
  },
  {
    'title': 'The Penguin Anthology of Twentieth-Century American Poetry',
    'owner': 'Rita Dove (Editor)',
    'image': 'https://m.media-amazon.com/images/I/61iCLZgv2bL.jpg',
    'details':
        '''This anthology is a comprehensive collection of 20th-century American poets, showcasing the diverse, dynamic voices that have shaped modern poetry.''',
    'genre': 'Poetry',
  },
  {
    'title': 'Poems by Emily Dickinson',
    'owner': 'Emily Dickinson',
    'image': 'https://i.redd.it/08wpgr3jnec91.jpg',
    'details':
        '''Emily Dickinson's poems are notable for their short, bold verse and their exploration of topics like death, nature, and the transcendence of the human spirit.''',
    'genre': 'Poetry',
  },
  {
    'title': 'The Sun and Her Flowers',
    'owner': 'Rupi Kaur',
    'image':
        'https://images-na.ssl-images-amazon.com/images/S/compressed.photo.goodreads.com/books/1499791446i/35606560.jpg',
    'details':
        '''The Sun and Her Flowers is Rupi Kaur's second poetry collection, continuing themes of healing, self-love, and personal growth.''',
    'genre': 'Poetry',
  },
  {
    'title': 'A Brief History of Time',
    'owner': 'Stephen Hawking',
    'image':
        'https://upload.wikimedia.org/wikipedia/en/a/a3/BriefHistoryTime.jpg',
    'details':
        '''A Brief History of Time by Stephen Hawking explores complex concepts in cosmology, such as black holes, the nature of time, and the origins of the universe, in a way that is accessible to the general reader.''',
    'genre': 'Academic',
  },
  {
    'title': 'The Structure of Scientific Revolutions',
    'owner': 'Thomas S. Kuhn',
    'image':
        'https://images-na.ssl-images-amazon.com/images/S/compressed.photo.goodreads.com/books/1396422530i/61539.jpg',
    'details':
        '''This influential work by Thomas S. Kuhn introduces the concept of "paradigm shifts" in science, challenging the traditional view of scientific progress as a gradual, cumulative process.''',
    'genre': 'Academic',
  },
  {
    'title': 'The Republic',
    'owner': 'Plato',
    'image':
        'https://cdn.kobo.com/book-images/057dd369-10e3-483e-87d8-42844a95dd1a/1200/1200/False/the-republic-190.jpg',
    'details':
        '''The Republic by Plato is a foundational philosophical text exploring justice, the ideal society, and the nature of knowledge and governance.''',
    'genre': 'Academic',
  },
  {
    'title': 'The Wealth of Nations',
    'owner': 'Adam Smith',
    'image':
        'https://cdn.kobo.com/book-images/164af17b-6987-4165-bfbf-b37c7e84276e/1200/1200/False/the-wealth-of-nations-illustrated-2.jpg',
    'details':
        '''The Wealth of Nations by Adam Smith lays the groundwork for modern economics, discussing the dynamics of labor, markets, and trade, as well as the role of government in economic systems.''',
    'genre': 'Academic',
  },
  {
    'title': 'The Interpretation of Dreams',
    'owner': 'Sigmund Freud',
    'image':
        'https://m.media-amazon.com/images/I/81wyvNZr3yL._UF1000,1000_QL80_.jpg',
    'details':
        '''Freud's The Interpretation of Dreams is a seminal work in psychology, introducing his theory of the unconscious and its relationship to dream analysis.''',
    'genre': 'Academic',
  },
  {
    'title': 'Principia Mathematica',
    'owner': 'Alfred North Whitehead and Bertrand Russell',
    'image':
        'https://upload.wikimedia.org/wikipedia/commons/3/3e/Newton%27s_Principia_title_page.png',
    'details':
        '''Principia Mathematica, authored by Whitehead and Russell, is a monumental work in logic and philosophy, attempting to derive all mathematical truths from a set of axioms using formal logic.''',
    'genre': 'Academic',
  },
  {
    'title': 'Silent Spring',
    'owner': 'Rachel Carson',
    'image': 'https://m.media-amazon.com/images/I/81Yza7XmfjL.jpg',
    'details':
        '''Silent Spring by Rachel Carson is a groundbreaking book in environmental science, warning about the dangers of pesticides and their long-term effects on ecosystems and human health.''',
    'genre': 'Academic',
  },
  {
    'title': 'Guns, Germs, and Steel',
    'owner': 'Jared Diamond',
    'image':
        'https://upload.wikimedia.org/wikipedia/en/f/fc/Ggas_human_soc.jpg',
    'details':
        '''Guns, Germs, and Steel by Jared Diamond explores the factors that influenced the development of human civilizations, arguing that geography, not racial differences, played the major role.''',
    'genre': 'Academic',
  },
  {
    'title': 'The Gene: An Intimate History',
    'owner': 'Siddhartha Mukherjee',
    'image': 'https://m.media-amazon.com/images/I/71HcXS1+R-L.jpg',
    'details':
        '''The Gene by Siddhartha Mukherjee traces the history of genetics, exploring the science, ethical dilemmas, and the profound impact genetics has on our understanding of human nature.''',
    'genre': 'Academic',
  },
  {
    'title': 'The Selfish Gene',
    'owner': 'Richard Dawkins',
    'image':
        'https://images-na.ssl-images-amazon.com/images/S/compressed.photo.goodreads.com/books/1366758096i/61535.jpg',
    'details':
        '''The Selfish Gene by Richard Dawkins introduces the concept of gene-centered evolution, arguing that natural selection operates on genes, not individuals or species.''',
    'genre': 'Academic',
  },
  {
    'title': 'The Social Contract',
    'owner': 'Jean-Jacques Rousseau',
    'image': 'https://book-assets.openroadmedia.com/9781504035460.jpg',
    'details':
        '''In The Social Contract, Rousseau discusses the concept of political legitimacy and explores how individuals can form a collective will to live harmoniously in society.''',
    'genre': 'Academic',
  },
  {
    'title': 'Thinking, Fast and Slow',
    'owner': 'Daniel Kahneman',
    'image':
        'https://coe-psp.dap.edu.ph/wp-content/uploads/2022/03/20-Thinking-Fast-and-Slow.jpg',
    'details':
        '''Thinking, Fast and Slow by Daniel Kahneman explores the two systems of thinking: fast, intuitive thought and slow, deliberate reasoning, and how they influence our decisions and judgments.''',
    'genre': 'Academic',
  },
  {
    'title': 'Sapiens: A Brief History of Humankind',
    'owner': 'Yuval Noah Harari',
    'image':
        'https://www.nationalbookstore.com/59500-medium_default_2x/sapiens-a-brief-history-of-humankind-trade-paperback-by-yuval-noah-harari.jpg',
    'details':
        '''Sapiens by Yuval Noah Harari examines the history of humankind, from the dawn of Homo sapiens to modern times, exploring the cultural, technological, and societal shifts that shaped us.''',
    'genre': 'Academic',
  },
  {
    'title': 'The Communist Manifesto',
    'owner': 'Karl Marx and Friedrich Engels',
    'image':
        'https://m.media-amazon.com/images/I/71kPzZ3KslL._AC_UF1000,1000_QL80_.jpg',
    'details':
        '''The Communist Manifesto, by Marx and Engels, presents a call to arms for the working class to overthrow capitalist societies and institute a classless, communist society.''',
    'genre': 'Academic',
  },
  {
    'title': 'The Origin of Species',
    'owner': 'Charles Darwin',
    'image':
        'https://cdn.kobo.com/book-images/1c471458-81e2-4f2a-92a9-fb04f091877b/1200/1200/False/the-origin-of-species-28.jpg',
    'details':
        '''The Origin of Species by Charles Darwin presents the theory of evolution by natural selection, forever altering our understanding of biology and the development of life on Earth.''',
    'genre': 'Academic',
  },
  {
    'title': 'The Second Sex',
    'owner': 'Simone de Beauvoir',
    'image':
        'https://th-test-11.slatic.net/p/1d1c73b1286fc85e19e62009d025e04b.jpg',
    'details':
        '''The Second Sex by Simone de Beauvoir is a foundational feminist text that analyzes the social construction of women’s roles and challenges gender inequality and oppression.''',
    'genre': 'Academic',
  },
  {
    'title': 'Capital in the Twenty-First Century',
    'owner': 'Thomas Piketty',
    'image':
        'https://images-na.ssl-images-amazon.com/images/S/compressed.photo.goodreads.com/books/1390111547i/18736925.jpg',
    'details':
        '''Capital in the Twenty-First Century by Thomas Piketty examines wealth inequality across centuries, analyzing the causes and consequences of economic disparities in modern society.''',
    'genre': 'Academic',
  },
  {
    'title': 'The Origins of Political Order',
    'owner': 'Francis Fukuyama',
    'image':
        'https://profilebooks.com/wp-content/uploads/2020/10/getimage-1252-scaled.jpeg',
    'details':
        '''The Origins of Political Order by Francis Fukuyama traces the history of political systems from prehuman times to the French Revolution, offering insights into the development of governance.''',
    'genre': 'Academic',
  },
  {
    'title': 'The Feminine Mystique',
    'owner': 'Betty Friedan',
    'image':
        'https://images-na.ssl-images-amazon.com/images/S/compressed.photo.goodreads.com/books/1377019820i/17573685.jpg',
    'details':
        '''The Feminine Mystique by Betty Friedan is a groundbreaking work that critiques the limited roles of women in mid-20th-century society and sparked the second wave of feminism in the United States.''',
    'genre': 'Academic',
  },
  {
    'title': 'Pride and Prejudice',
    'owner': 'Jane Austen',
    'image':
        'https://images-na.ssl-images-amazon.com/images/S/compressed.photo.goodreads.com/books/1681804503i/129915654.jpg',
    'details':
        '''Pride and Prejudice by Jane Austen is a beloved classic that explores themes of love, marriage, and social class, as Elizabeth Bennet navigates her feelings for the seemingly aloof Mr. Darcy.''',
    'genre': 'Romance',
  },
  {
    'title': 'The Notebook',
    'owner': 'Nicholas Sparks',
    'image':
        'https://images-na.ssl-images-amazon.com/images/S/compressed.photo.goodreads.com/books/1483183484i/33648131.jpg',
    'details':
        '''The Notebook is a heart-wrenching romance novel by Nicholas Sparks, following the story of Noah and Allie, whose love endures the trials of time, separation, and memory loss.''',
    'genre': 'Romance',
  },
  {
    'title': 'Outlander',
    'owner': 'Diana Gabaldon',
    'image':
        'https://images-na.ssl-images-amazon.com/images/S/compressed.photo.goodreads.com/books/1659086907i/10964.jpg',
    'details':
        '''Outlander by Diana Gabaldon is a historical romance that follows Claire Randall, a 20th-century woman who is transported back in time to 18th-century Scotland, where she falls in love with Jamie Fraser.''',
    'genre': 'Romance',
  },
  {
    'title': 'Me Before You',
    'owner': 'Jojo Moyes',
    'image':
        'https://images-na.ssl-images-amazon.com/images/S/compressed.photo.goodreads.com/books/1665087720i/17347634.jpg',
    'details':
        '''Me Before You by Jojo Moyes tells the poignant story of Louisa Clark, who becomes the caregiver for a man who has been left paralyzed after an accident, leading to an unexpected and life-changing romance.''',
    'genre': 'Romance',
  },
  {
    'title': 'The Fault in Our Stars',
    'owner': 'John Green',
    'image':
        'https://offtheshelf.b-cdn.net/app/uploads/2014/04/The-Fault-in-Our-Stars.png',
    'details':
        '''The Fault in Our Stars by John Green is a deeply moving love story about two teenagers, Hazel and Gus, who find love while battling cancer.''',
    'genre': 'Romance',
  },
  {
    'title': 'Twilight',
    'owner': 'Stephenie Meyer',
    'image':
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS4AgFhxAabj0_KT5g7mD-hisX_fLt1M-Zcew&s',
    'details':
        '''Twilight by Stephenie Meyer is a paranormal romance that follows the love story between Bella Swan and Edward Cullen, a vampire, exploring themes of forbidden love and immortality.''',
    'genre': 'Romance',
  },
  {
    'title': 'The Rosie Project',
    'owner': 'Graeme Simsion',
    'image':
        'https://images-na.ssl-images-amazon.com/images/S/compressed.photo.goodreads.com/books/1371651741i/16181775.jpg',
    'details':
        '''The Rosie Project by Graeme Simsion is a quirky, heartwarming romance about Don Tillman, a socially awkward genetics professor, who embarks on a scientific quest to find the perfect wife, only to fall for the unexpected Rosie.''',
    'genre': 'Romance',
  },
  {
    'title': 'Anna Karenina',
    'owner': 'Leo Tolstoy',
    'image':
        'https://images-na.ssl-images-amazon.com/images/S/compressed.photo.goodreads.com/books/1657540103i/151.jpg',
    'details':
        '''Anna Karenina by Leo Tolstoy is a classic Russian novel that explores the complexities of love, infidelity, and societal expectations, as Anna embarks on a passionate affair that ultimately leads to her tragic downfall.''',
    'genre': 'Romance',
  },
  {
    'title': 'The Hating Game',
    'owner': 'Sally Thorne',
    'image':
        'https://static.wixstatic.com/media/eb34f2_3a067c584c024efc892802294bcf10ae~mv2_d_1497_2339_s_2.jpg/v1/fill/w_340,h_508,al_c,q_80,usm_0.66_1.00_0.01,enc_avif,quality_auto/hbg-title-9780349414263-22.jpg',
    'details':
        '''The Hating Game by Sally Thorne is a romantic comedy about two coworkers, Lucy and Joshua, who seem to hate each other, but their rivalry leads to an unexpected and passionate romance.''',
    'genre': 'Romance',
  },
  {
    'title': 'Fifty Shades of Grey',
    'owner': 'E.L. James',
    'image':
        'https://upload.wikimedia.org/wikipedia/en/thumb/b/b2/Fifty_Shades_triology_%28paperback%29_cover.jpg/220px-Fifty_Shades_triology_%28paperback%29_cover.jpg',
    'details':
        '''Fifty Shades of Grey by E.L. James is a provocative romance that explores the relationship between Anastasia Steele and billionaire Christian Grey, marked by passion, power dynamics, and emotional depth.''',
    'genre': 'Romance',
  },
  {
    'title': 'Eleanor & Park',
    'owner': 'Rainbow Rowell',
    'image':
        'https://cdn.kobo.com/book-images/e2991b28-2602-4a4f-b653-0f1e243f0bac/1200/1200/False/eleanor-park.jpg',
    'details':
        '''Eleanor & Park by Rainbow Rowell tells the tender, heartfelt story of two misfit high school sophomores who fall in love despite their differences and struggles with family, bullying, and self-acceptance.''',
    'genre': 'Romance',
  },
  {
    'title': 'A Walk to Remember',
    'owner': 'Nicholas Sparks',
    'image':
        'https://m.media-amazon.com/images/M/MV5BYjkxZWE0YjMtYTk2OS00ZmFjLTk2YjEtY2M3MGY4MzE4MGNkXkEyXkFqcGc@._V1_FMjpg_UX1000_.jpg',
    'details':
        '''A Walk to Remember by Nicholas Sparks is a touching romance about Landon and Jamie, two teenagers who fall in love despite their differences, leading to a powerful and unforgettable love story.''',
    'genre': 'Romance',
  },
  {
    'title': 'It Ends with Us',
    'owner': 'Colleen Hoover',
    'image':
        'https://images-na.ssl-images-amazon.com/images/S/compressed.photo.goodreads.com/books/1688011813i/27362503.jpg',
    'details':
        '''It Ends with Us by Colleen Hoover is a heartbreaking and inspiring romance about Lily Bloom, who struggles with an abusive relationship but finds love with someone new, only to face unexpected challenges.''',
    'genre': 'Romance',
  },
  {
    'title': 'Brida',
    'owner': 'Paulo Coelho',
    'image':
        'https://images-na.ssl-images-amazon.com/images/S/compressed.photo.goodreads.com/books/1348948742i/6085408.jpg',
    'details':
        '''Brida by Paulo Coelho is a mystical romance that tells the story of a young woman searching for her true self and her soulmate, blending love with spiritual awakening and personal growth.''',
    'genre': 'Romance',
  },
  {
    'title': 'The Wedding Date',
    'owner': 'Jasmine Guillory',
    'image':
        'https://m.media-amazon.com/images/I/51AoazWyv5L._AC_SY200_QL15_.jpg',
    'details':
        '''The Wedding Date by Jasmine Guillory is a romantic comedy about Alexa and Drew, who meet in an elevator and agree to pretend to be a couple at a wedding, only to find themselves falling for each other for real.''',
    'genre': 'Romance',
  },
  {
    'title': 'Beautiful Disaster',
    'owner': 'Jamie McGuire',
    'image':
        'https://down-ph.img.susercontent.com/file/ph-11134207-7r98o-lkuz3v56ocowb4',
    'details':
        '''Beautiful Disaster by Jamie McGuire is a passionate romance about Abby and Travis, two college students who fall in love despite their tumultuous relationship, filled with drama, intensity, and unforgettable moments.''',
    'genre': 'Romance',
  },
  {
    'title': 'The Time Traveler\'s Wife',
    'owner': 'Audrey Niffenegger',
    'image':
        'https://cdn.kobo.com/book-images/8cc7053d-b3a4-42d0-bdf2-dc1085fbda80/1200/1200/False/the-time-traveler-s-wife-8.jpg',
    'details':
        '''The Time Traveler's Wife by Audrey Niffenegger is a unique romance about Clare and Henry, whose love transcends time, as Henry involuntarily travels through time, creating a complicated and beautiful relationship.''',
    'genre': 'Romance',
  },
  {
    'title': 'Confessions of a Shopaholic',
    'owner': 'Sophie Kinsella',
    'image':
        'https://media.karousell.com/media/photos/products/2023/1/28/confessions_of_a_shopaholic_by_1674876694_2c791503.jpg',
    'details':
        '''Confessions of a Shopaholic by Sophie Kinsella is a humorous and lighthearted romance about Becky Bloomwood, a compulsive shopper who finds herself in a complicated love triangle while trying to manage her finances and relationships.''',
    'genre': 'Romance',
  }
];
