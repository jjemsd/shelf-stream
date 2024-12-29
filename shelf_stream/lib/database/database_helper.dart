import 'package:shelf_stream/models/book_details.dart';
import 'package:shelf_stream/models/user_model.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DatabaseHelper {
  static String dbName = "ShelfStreamDataBase.db";
  static int dbVersion = 5;

  static const String usersTable = "users";
  static const String booksTable = "books";

  static Future<Database> openDb() async {
    var path = join(await getDatabasesPath(), dbName);
    print('Database path: $path');

    // SQL to create users table
    var createUsersTableSql = '''
    CREATE TABLE IF NOT EXISTS $usersTable (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        firstName TEXT NOT NULL,
        lastName TEXT NOT NULL,
        email TEXT UNIQUE NOT NULL,
        username TEXT UNIQUE NOT NULL,
        password TEXT NOT NULL,
        bio TEXT,
        profilePicture TEXT
    );
    ''';

    // SQL to create books table
    var createBooksTableSql = '''
    CREATE TABLE IF NOT EXISTS $booksTable (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        title TEXT NOT NULL,
        imageUrl TEXT,
        author TEXT,
        ownerId INTEGER NOT NULL,
        ownerName TEXT,
        details TEXT
        
    );
    ''';

    var db = await openDatabase(
      path,
      version: dbVersion,
      onCreate: (db, version) async {
        // Create both tables
        await db.execute(createUsersTableSql);
        print('Users table created');
        await db.execute(createBooksTableSql);
        print('Books table created');
      },
      onUpgrade: (db, oldVersion, newVersion) async {
        if (newVersion <= oldVersion) return;

        // Drop and recreate both tables
        await db.execute('DROP TABLE IF EXISTS $usersTable');
        await db.execute('DROP TABLE IF EXISTS $booksTable');
        await db.execute(createUsersTableSql);
        await db.execute(createBooksTableSql);
        print('Users and books tables dropped and recreated');
      },
    );
    print('Db opened');
    return db;
  }

  static Future<void> insertUser(User user) async {
    var db = await openDb();
    // int id;
    try {
      int id = await db.insert(usersTable, user.toMap());
      print('Inserted record with ID: $id');
    } catch (e) {
      print('Error inserting user: $e');
    } finally {
      await db.close();
    }
  }

  static Future<void> fetchUser() async {
    var db = await openDb();
    var result = await db.rawQuery('SELECT * FROM $usersTable');

    print('$result');
  }

  static Future<List<Map<String, dynamic>>> getLastInsertedUser() async {
    var db = await openDb();
    return await db
        .rawQuery('SELECT * FROM $usersTable ORDER BY id DESC LIMIT 1');
  }

  static Future<void> editProfile(User user) async {
    var db = await openDb();
    var id = await db.update(
      usersTable,
      user.toMap(),
      where: 'id = ?',
      whereArgs: [user.id],
    );
    print('record updated with ID: $id');
  }

  static Future<void> insertBook(BookDetails book) async {
    var db = await openDb();
    try {
      await db.insert(booksTable, book.toMap());
      print('Book inserted: ${book.title}');
    } catch (e) {
      print('Error inserting book: $e');
    } finally {
      await db.close();
    }
  }

  static Future<List<Map<String, dynamic>>> getBooksByOwnerId(
      int ownerId) async {
    var db = await openDb();
    return await db
        .rawQuery('SELECT * FROM $booksTable WHERE ownerId = ?', [ownerId]);
  }

  // Edit book including imageUrl
  // Edit book
  static Future<void> editBook(BookDetails book) async {
    var db = await openDb();
    await db.update(
      booksTable,
      book.toMap(),
      where: 'id = ?',
      whereArgs: [book.id],
    );
    print('Book updated with ID: ${book.id}');
  }

// Delete book
  static Future<void> deleteBook(int bookId) async {
    var db = await openDb();
    await db.delete(
      booksTable,
      where: 'id = ?',
      whereArgs: [bookId],
    );
    print('Book deleted with ID: $bookId');
  }

    static Future<void> updateProfilePicture(
      int userId, String newProfilePictureUrl) async {
    var db = await openDb();

    try {
      int updatedRows = await db.update(
        usersTable,
        {'profilePicture': newProfilePictureUrl},
        where: 'id = ?',
        whereArgs: [userId],
      );

      if (updatedRows > 0) {
        print('Profile picture updated successfully for user ID: $userId');
      } else {
        print('No record found with ID: $userId');
      }
    } catch (e) {
      print('Error updating profile picture: $e');
    } finally {
      await db.close();
    }
  }



}
