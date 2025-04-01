import 'package:woofer_app/widgets/loginPage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

// Card Stack widget adapted from : https://blog.logrocket.com/create-flutter-dating-app-swipe-cards/
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Colors.white,
          body: Stack(
            children: const [
              LoginPage(),
            ],
          ),
        ));
  }
}

enum Swipe { left, right, none }
