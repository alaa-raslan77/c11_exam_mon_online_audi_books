import 'package:audi_books/audi_books_screen.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: AudiBooksScreen.routeName,
      routes: {
        AudiBooksScreen.routeName:(context)=>AudiBooksScreen(),

      },
    );
  }
}
