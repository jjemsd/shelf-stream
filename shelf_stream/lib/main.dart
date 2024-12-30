import 'package:flutter/material.dart';
import 'package:shelf_stream/screens/log_in_screen.dart';
import 'package:shelf_stream/screens/shelf_stream_home.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const ShelfStreamMain());
}

class ShelfStreamMain extends StatefulWidget {
  const ShelfStreamMain({super.key});

  @override
  State<ShelfStreamMain> createState() => _ShelfStreamMainState();
}

class _ShelfStreamMainState extends State<ShelfStreamMain> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
    );
  }
}
