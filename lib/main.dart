import 'package:flutter/material.dart';

import 'home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Colors.purple,
        primarySwatch: Colors.blue,
        backgroundColor: Colors.red.shade300,
        scaffoldBackgroundColor: Colors.red.shade300,
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.purpleAccent
        )
      ),
      home: const HomePage()
    );
  }
}
