import 'package:woofer_app/objects/pet_info.dart';
import 'package:flutter/material.dart';
import 'details_page.dart';

class ContactInfoWidget extends StatefulWidget {
  
  final List<Profile> petMatches = getAcceptedPets();

  ContactInfoWidget({super.key});

  @override
  State<ContactInfoWidget> createState() => ContactInfoState();
}

class ContactInfoState extends State<ContactInfoWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Contact Information",
        ),
        backgroundColor: Colors.orange,
      ),
      body: _buildContactList(context),
    );
  }

  Widget _buildContactList(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10), 
      child: ListView.separated(
        itemCount: widget.petMatches.length,
        separatorBuilder: (context, index) {
          return const Divider(
            height: 5,
          );
        },
        itemBuilder: (context, index) {
          return Card(
              child: ListTile(
              title: Text(widget.petMatches[index].petName),
              subtitle: Text(widget.petMatches[index].shelterEmail),
              leading: Icon(widget.petMatches[index].dynamicIcon, color: Colors.orange,),
              trailing: IconButton(
                icon: const Icon(Icons.arrow_forward),
                onPressed: () async {
                  final bookedIcon = await Navigator.push(
                    context, 
                    MaterialPageRoute(
                      builder: (context) => DetailsPage(widget.petMatches[index])) //Navigate to the details page
                  ); 
                  if (bookedIcon != null) {
                    setState(() {
                      widget.petMatches[index].dynamicIcon = bookedIcon; //Update the icon if the user pressed appointment button
                    });
                  }
                }
              )
            )
          );
        },
      ),
    );
  }
}