
import 'package:flutter/material.dart';
import 'package:re_exam/screens/cartpage.dart';
import 'package:re_exam/screens/chekout.dart';
import 'package:re_exam/screens/detailspage.dart';
import 'package:re_exam/screens/homepage.dart';
void main()
{
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/home',
      routes: {
      '/home':  (context) => Homepage(),
        '/det':(context) =>Detailspage(),
        '/cart':(context) => Cartpage(),
        'ck':(context) => Chekout(),
    }
    );
  }
}
