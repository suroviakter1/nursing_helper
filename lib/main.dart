import 'package:flutter/material.dart';

import 'views/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        unselectedWidgetColor: Colors.black
      ),
      debugShowCheckedModeBanner: false,
    home: LogInPage() );
  }
}
