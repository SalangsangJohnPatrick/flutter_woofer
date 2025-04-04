import 'package:flutter/material.dart';
import 'package:woofer_app/objects/pet_info.dart';

class PetProfile extends StatelessWidget {
const PetProfile({ Key? key, required this.profile }) : super(key: key);
  final Profile profile;

  @override
  Widget build(BuildContext context){
    return Container(
      height: 580,
      width: 340,
      padding: const EdgeInsets.symmetric(vertical:10),
      child: Stack(children: [
        Positioned.fill(child: 
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.asset(
            profile.petPhoto,
            fit: BoxFit.fitHeight,
          ),
          ),
          ),
        Positioned(
          bottom: 0,
          child: Container(
            height: 80,
            width: 340,
            decoration: ShapeDecoration(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.only(left:20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    profile.petName,
                    style: const TextStyle(
                      fontSize: 21,
                    )
                  ),
                  Text(
                    'age: ${profile.petAge}',
                    style: const TextStyle(
                      fontSize: 14,
                      
                    )
                  )
                ],
              )
            ),
          ),
        )
      ],)
    );
  }
}