import 'package:flutter/material.dart';
import 'package:shopping_app/CartPage.dart';
import 'package:shopping_app/ItemPage.dart';
import 'package:shopping_app/pages/Homepage.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
      ),
      routes: {
        "/" :(context) =>Homepage(),
        "cartPage" :(context) =>CartPage(),
        "itemPage" :(context) =>ItemPage(),
      },
    );
  }
}





