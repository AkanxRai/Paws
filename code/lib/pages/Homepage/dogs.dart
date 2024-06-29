import 'package:flutter/material.dart';

import 'package:paws/pages/Homepage/square.dart';
import 'package:paws/pages/Homepage/pet.dart';

class dogs extends StatefulWidget {
  const dogs({super.key});

  @override
  State<dogs> createState() => _dogsState();
}

class _dogsState extends State<dogs> {
  final List<Pet> pets = [
    Pet(
      name: 'Dog 1',
      image:
          'assets/images/Cats/puppy-1047521_640.jpg', // Replace with actual image URL
      title: 'Dog 1',

      description: 'Description ',
    ),
    Pet(
      name: 'Dog 2',
      image: 'assets/images/Cats/Dog -2.jpg', // Replace with actual image URL
      title: 'Dog 2',
      description: 'Description ',
    ),
    Pet(
      name: 'Dog 3',
      image: 'assets/images/Cats/Dog-1.jpg', // Replace with actual image URL
      title: 'Dog 3',
      description: 'Description ',
    ),
    Pet(
      name: 'Dog 4',
      image: 'assets/images/Cats/Dog-1.jpg', // Replace with actual image URL
      title: 'Dog 4',
      description: 'Description ',
    ),
    Pet(
      name: 'Dog 5',
      image: 'assets/images/Cats/Dog-1.jpg', // Replace with actual image URL
      title: 'Dog 5',
      description: 'Description ',
    ),
    Pet(
      name: 'Dog 6',
      image: 'assets/images/Cats/Dog-1.jpg', // Replace with actual image URL
      title: 'Dog 6',
      description: 'Description ',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2, // Set the number of widgets in each row
        crossAxisSpacing: 8.0, // Set the horizontal spacing between widgets
        mainAxisSpacing: 8.0, // Set the vertical spacing between rows
      ),
      itemCount: pets.length,
      itemBuilder: (BuildContext context, int index) {
        return MySquare(
          pet: pets[index],
        ); // Pass the pet name to MySquare
      },
    );
  }
}
