import 'package:woofer_app/objects/pet_info.dart';
import 'package:flutter/material.dart';
import 'package:woofer_app/widgets/appointment_button.dart';

class DetailsPage extends StatelessWidget {
  Profile doggo;

  List<Profile> liked = [];

  DetailsPage(this.doggo, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
          width: double.maxFinite,
          height: double.maxFinite,
          child: Stack(
            children: [
              Positioned(
                  left: 0,
                  right: 0,
                  child: Container(
                    width: double.maxFinite,
                    height: 400,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(doggo.petPhoto), fit: BoxFit.cover),
                    ),
                  )), // Animal Image

              Positioned(
                left: 20,
                top: 40,
                child: SizedBox(
                  width: 50,
                  height: 50,
                  child: CircleAvatar(
                      backgroundColor: Colors.white,
                      child: InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: const Icon(
                            Icons.arrow_back_outlined,
                            color: Colors.orange,
                          ))),
                ),
              ), //Back Button

              Positioned(
                  top: 320,
                  left: 0,
                  bottom: 50,
                  right: 0,
                  child: Container(
                      padding:
                          const EdgeInsets.only(left: 20, right: 20, top: 30),
                      width: MediaQuery.of(context).size.width,
                      height: double.maxFinite,
                      decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(30),
                              topRight: Radius.circular(30))),
                      child: SingleChildScrollView(
                          child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(doggo.petName,
                                  style: TextStyle(
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black.withOpacity(0.8))),
                              Text(doggo.petAge,
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color:
                                          Colors.deepOrange.withOpacity(0.8)))
                            ],
                          ), //Pet Name & Age
                          const SizedBox(height: 10),
                          Row(
                            children: [
                              const Icon(
                                Icons.location_on,
                                color: Colors.orange,
                              ),
                              const SizedBox(width: 5),
                              Text(doggo.shelterLocation,
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black.withOpacity(0.8)))
                            ],
                          ), //Shelter Location

                          const SizedBox(height: 25),
                          Row(
                            children: [
                              const Padding(
                                  padding: EdgeInsets.only(right: 10),
                                  child: Icon(
                                    Icons.pets_outlined,
                                    color: Colors.orange,
                                  )),
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text("More About Me",
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                          color:
                                              Colors.black.withOpacity(0.8)))),
                            ],
                          ),
                          const SizedBox(height: 10),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                doggo.petDescription,
                                style: TextStyle(
                                    color: Colors.black.withOpacity(0.8)),
                                textAlign: TextAlign.justify,
                              )), //Pet Description => More About Me

                          const SizedBox(height: 20),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              const Padding(
                                  padding: EdgeInsets.only(right: 10),
                                  child: Icon(Icons.health_and_safety_outlined,
                                      color: Colors.orange)),
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text("My Health",
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                          color:
                                              Colors.black.withOpacity(0.8)))),
                            ],
                          ),
                          const SizedBox(height: 10),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                doggo.petHealth,
                                style: TextStyle(
                                    color: Colors.black.withOpacity(0.8)),
                                textAlign: TextAlign.justify,
                              )), //Pet Health => My Health

                          const SizedBox(height: 20),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              const Padding(
                                  padding: EdgeInsets.only(right: 10),
                                  child: Icon(
                                    Icons.other_houses_outlined,
                                    color: Colors.orange,
                                  )),
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text("About My Shelter",
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                          color:
                                              Colors.black.withOpacity(0.8)))),
                            ],
                          ),
                          const SizedBox(height: 10),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                doggo.shelterDescription,
                                style: TextStyle(
                                    color: Colors.black.withOpacity(0.8)),
                                textAlign: TextAlign.justify,
                              )), //Shelter Description => About My Shelter

                          const SizedBox(height: 10),
                          Container(
                            height: 50,
                            width: 300,
                            alignment: Alignment.center,
                            margin: const EdgeInsets.all(0.5),
                            decoration: BoxDecoration(
                                color: Colors.orange,
                                borderRadius: BorderRadius.circular(5)),
                            padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                  constraints: const BoxConstraints(
                                    maxHeight: 50,
                                    maxWidth: 300,
                                  ),
                                  child: AppointmentButton(),
                                ),
                              ],
                            ),
                          ), //Book an Appointment (Button)
                        ],
                      ))))
            ],
          )),
    );
  }
}
