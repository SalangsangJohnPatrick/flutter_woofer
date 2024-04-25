import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';

class AppointmentButton extends StatefulWidget {
  const AppointmentButton({super.key});

  @override
  State<AppointmentButton> createState() => AppointmentButtonState();
}

class AppointmentButtonState extends State<AppointmentButton> {
  String appointmentText = "Book an Appointment";

  void appointmentButtonPressed() {
    setState(() {
      appointmentText = "Appointment Booked!"; //Change text to "Appointment Booked!"
      Navigator.pop(context, Icons.flag); //Replace Icon 'paw => flag', indicating the appointment was set
    });
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedButton(
      text: appointmentText,
      buttonTextStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
      color: Colors.orange,
      borderRadius: BorderRadius.circular(5),
      pressEvent: () {
        AwesomeDialog(
          buttonsBorderRadius: BorderRadius.circular(5),
          btnOkText: "Accept",
          buttonsTextStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
          btnOkColor: Colors.orange,
          context: context,
          dialogType: DialogType.warning,
          animType: AnimType.topSlide,
          showCloseIcon: false,
          title: "Appointment Successfully Booked",
          titleTextStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
          btnOkOnPress: () {
            appointmentButtonPressed();
          }
        ).show();
      },
    );
  }
}