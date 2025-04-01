import 'package:woofer_app/widgets/cardstackwidget.dart';
import 'package:flutter/material.dart';
import '../objects/user_info.dart';
import 'package:woofer_app/widgets/navbar.dart';
import 'package:woofer_app/widgets/contactInfoWidget.dart';
import 'package:woofer_app/widgets/loginPage.dart';


// ignore: camel_case_types

class user_Page extends StatefulWidget {
  AppUsers use;
  user_Page(this.use,{super.key});



  @override
  State<user_Page> createState() => _ProfileState();
}

class _ProfileState extends State<user_Page> {
  //RegistrationPage profile = const RegistrationPage();
  @override
  Widget build(BuildContext context) {

    /// Variable for consistent Text Format
    const TextStyle style = TextStyle(fontSize: 15,color: Colors.black);


    /// Variable for consistent Container Format
    BoxDecoration whitebox = BoxDecoration(
            color: Colors.white, border: Border.all(color: Colors.black),borderRadius: BorderRadius.circular(20.0));
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Column(children: <Widget>[


///Title Bar
/// Row to divide portion in 2
/// user_Page string and Image

      AppBar(
        toolbarHeight: 60,
        backgroundColor: Colors.orangeAccent,
        title: Row(
        mainAxisAlignment:MainAxisAlignment.spaceBetween,


        children: [

        Container(
          height: 50,
          width: 150,
          alignment: Alignment.center,
          child: const Text("User Profile",style: TextStyle(fontSize: 20,color: Colors.black),
                  )),

          const Icon(Icons.pets,
          size: 40,
          weight:50,
          color: Colors.black,
          )])), //Container

///User Name and image
/// Row to divide portion in 2
/// Icon and username
/// Need to align icon to first field


      Row(
        mainAxisAlignment:MainAxisAlignment.center,

        children: [
        const Icon(
          Icons.account_circle_sharp,
          size: 70,
          weight: 50,


          ),

        Container(
          height: 50,
          width: 280,
          alignment:Alignment.centerLeft,
          margin: const EdgeInsets.all(20),
          padding: const EdgeInsets.only(right:120),
          child: const Text("Woofer_User",
          style: TextStyle(fontSize: 24,color: Colors.black),
                  ))]), //Container

///First Name and Last Name
/// Row to divide portion in 2
///
///
        Container(
          height: 50,
          width: 300,
          margin: const EdgeInsets.all(20),
          padding: const EdgeInsets.only(left:20,top: 5 ),
          alignment: Alignment.centerLeft,
          decoration: whitebox,
          child: Text(widget.use.fname,
              style:style,
              )), //Container

        Container(
          height: 50,
          width: 300,
          margin: const EdgeInsets.all(20),
          padding: const EdgeInsets.only(left:20,top: 5 ),
          alignment: Alignment.centerLeft,
          decoration: whitebox,
          child:  Text(widget.use.lname,
              style:style,
              )), //Container

        Container(
          height: 50,
          width: 300,
          margin: const EdgeInsets.all(20),
          padding: const EdgeInsets.only(left:20,top: 5 ),
          alignment: Alignment.centerLeft,
          decoration: whitebox,
          child:  Text(widget.use.email,
              style:style,
              )),

          Container(
          height: 50,
          width: 300,
          margin: const EdgeInsets.all(20),
          padding: const EdgeInsets.only(left:20,top: 5 ),
          alignment: Alignment.centerLeft,
          decoration: whitebox,
          child: Text(widget.use.usernum,
              style:style,
              )),
        Container(
          height: 50,
          width: 300,
          margin: const EdgeInsets.all(20),
          padding: const EdgeInsets.only(top: 5 ),
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: Colors.red, border: Border.all(color: Colors.black),borderRadius: BorderRadius.circular(20.0)),
          child: TextButton(
            onPressed: (){
                    setState(() {
                      Navigator.push(context,
                      MaterialPageRoute(
                        builder:(context)=>const LoginPage()));
                        });},
                      child: const Text("LOGOUT",
                        style:style,
                         ))),
          Positioned(
        bottom: 10,
        left: 0,
        right: 0,
        child: Padding(
          padding: const EdgeInsets.only(bottom: 46.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Navbar(onPressed: (){
                Navigator.pop(context);
              },
              icon: const Icon(
                Icons.person,
                color: Colors.amberAccent),
              ),
            const SizedBox(width: 20),
            Navbar(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => const JoinedCardStack()));
              },
            icon: const Icon(
              Icons.menu,
              color: Colors.amberAccent),
              ),
            const SizedBox(width: 20),
            Navbar(onPressed: (){
              Navigator.push(context,
              MaterialPageRoute(builder:
              (context) => ContactInfoWidget()
                  ),
                );
              },
            icon: const Icon(
              Icons.contact_phone,
              color: Colors.amberAccent),
              ),
            ],
          ),
        )
      ),//Container
              ] //<Widget>
            ))); //MaterialApp
  }
}