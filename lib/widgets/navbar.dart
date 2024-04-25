import 'package:flutter/material.dart';

class Navbar extends StatelessWidget {
  const Navbar({ Key? key, 
    required this.onPressed, 
    required this.icon }) : super(key: key);
  final VoidCallback onPressed;
  final Icon icon;

    @override
    Widget build(BuildContext context){
      return Material(
        shape: const CircleBorder(),
        child: Card(
          elevation: 10,
          shape: RoundedRectangleBorder (
            borderRadius: BorderRadius.circular(35.0),
          ),
          child: IconButton(onPressed: onPressed, icon: icon)
        )
      );
    }
}