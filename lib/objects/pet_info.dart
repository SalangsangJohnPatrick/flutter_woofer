import 'package:flutter/material.dart';

class Profile {
  final String petName;
  final String petAge;
  final String petPhoto;
  final String shelterLocation;
  final String petDescription;
  final String petHealth;
  final String shelterDescription;
  final String shelterEmail;
  IconData dynamicIcon;

  Profile({ 
    required this.petName,
    required this.petAge,
    required this.petPhoto,
    required this.shelterLocation, 
    required this.petDescription, 
    required this.petHealth, 
    required this.shelterDescription,
    required this.shelterEmail,
    required this.dynamicIcon,
  });

}

List<Profile> petInfo = [
  Profile(dynamicIcon: Icons.pets, petPhoto: "images/dog1.jpg", 
  petName: "Luna", petAge: "2 years old", 
  shelterLocation: "Barangay Balibago, Angeles City, Pampanga", 
    petDescription: "Luna is a spunky and energetic dog who loves to play fetch and cuddle on the couch. She is great with kids and other dogs, and would make the perfect addition to any family.", 
    petHealth: "Luna is up-to-date on all her vaccinations and has been spayed.",
    shelterDescription: "Animal Haven is a no-kill animal shelter that has been serving the community for over 20 years. We pride ourselves on providing a safe and loving environment for all our animals until they find their forever homes."
    ,shelterEmail: "adopt@hopeanimalshelter.org@gmail.com"),
  Profile(dynamicIcon: Icons.pets, petPhoto: "images/dog2.jpg", 
  petName: "Rocky", 
  petAge: "10 months old", 
  shelterLocation: "Barangay San Agustin, San Fernando, Pampanga", 
    petDescription: "Rocky is a playful and energetic dog. He loves to play with toys and climb on furniture. Rocky is also very affectionate and enjoys cuddling with his human friends.", 
    petHealth: "Rocky is neutered, up-to-date on his vaccinations, and has no known health issues.",
    shelterDescription: "The Miami Animal Shelter is a non-profit organization that provides care and shelter for homeless animals in the community. They work to find permanent homes for all of their animals, and they also offer a variety of educational programs and community outreach events.",
    shelterEmail: "info@kindnesspetrescue.org"),
  Profile(dynamicIcon: Icons.pets, petPhoto: "images/dog3.jpg", petName: "Charlie", petAge: "3 years old", shelterLocation: "Barangay San Carlos, Mexico, Pampanga", 
    petDescription: "Charlie is a friendly and loyal stray. He loves to play fetch and go for walks. Charlie is good with children and other dogs, but he does not get along well with cats.", 
    petHealth: "Charlie is neutered, up-to-date on his vaccinations, and has no known health issues.",
    shelterDescription: "The Lexington Animal Shelter is a no-kill shelter that provides care and shelter for animals in need. They work to find permanent homes for all of their animals, and they are dedicated to promoting responsible pet ownership in the community.",
    shelterEmail: "adoption@pawsandclawsrescue.com"),
  Profile(dynamicIcon: Icons.pets, petPhoto: "images/dog4.jpg", petName: "Shadow", petAge: "6 months old", shelterLocation: "Barangay Dau, Mabalacat City, Pampanga", 
    petDescription: "Shadow is a playful and energetic black puppy. He loves to run and play, and he is always eager to meet new people and dogs. Shadow would do best in a home with an active family who can provide plenty of exercise and attention.", 
    petHealth: "Shadow is up-to-date on his vaccinations and has no known health issues.",
    shelterDescription: "The Portland Animal Shelter is a non-profit organization that provides care and shelter for homeless animals in the community. They work to find permanent homes for all of their animals, and they also offer low-cost spay/neuter services to help reduce pet overpopulation.",
    shelterEmail: "contact@rescuedtails.org"),
  Profile(dynamicIcon: Icons.pets, petPhoto: "images/dog5.jpg", petName: "Oreo", petAge: "4 years old", shelterLocation: "Barangay Sulipan, Apalit, Pampanga", 
    petDescription: "Oreo is a sweet and gentle black and white dog. She loves to curl up on laps and take long naps in the sun. Oreo is also very curious and enjoys exploring her surroundings.", 
    petHealth: "Oreo is spayed, up-to-date on her vaccinations, and has no known health issues.",
    shelterDescription: "The Seattle Animal Shelter is a city-run facility that provides care and shelter for animals in need. They work to find permanent homes for all of their animals, and they also offer a variety of community outreach programs and educational resources.",
    shelterEmail: "adoptions@fur-everfriends.org"),
];

List<Profile> acceptedPets = [];

void addPets(accepted) {
  acceptedPets.add(accepted);
}

List<Profile> getAcceptedPets() {
  return acceptedPets;
} 