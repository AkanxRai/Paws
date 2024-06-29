import 'package:flutter/material.dart';
import 'package:paws/pages/Homepage/abtcat.dart';
import 'package:paws/pages/Homepage/catdesc.dart';

import 'package:paws/pages/Homepage/square.dart';
import 'package:paws/pages/Homepage/pet.dart';

class cats extends StatefulWidget {
  const cats({super.key});

  @override
  State<cats> createState() => _catsState();
}

class _catsState extends State<cats> {
  final List<Pet> pets = [
    Pet(
      name: 'Cat 1',
      image: 'assets/images/Cats/Cat 1.jpg', // Replace with actual image URL
      title: 'British Shorthair',

      description: petDescriptions
          .firstWhere((desc) => desc.name == 'Cat 1')
          .description,
    ),
    Pet(
      name: 'Cat 2',
      image: 'assets/images/Cats/cat 2.jpg', // Replace with actual image URL
      title: 'Cat 2',

      description: 'Description ',
    ),
    Pet(
      name: 'Cat 3',
      image: 'assets/images/Cats/Cat 9.jpg',
      title: 'Cat 3',
      description: 'Description ',
    ),
    Pet(
      name: 'Cat 4',
      image: 'assets/images/Cats/cat 4.jpg',
      title: 'Cat 4',
      description: 'Description ',
    ),
    Pet(
      name: 'Cat 5',
      image: 'assets/images/Cats/Cat 5.jpg',
      title: 'Cat 5',
      description: 'Description ',
    ),
    Pet(
      name: 'Cat 6',
      image: 'assets/images/Cats/Cat 6.jpg',
      title: 'Cat 6',
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
        return GestureDetector(
          child: MySquare(
            pet: pets[index],
          ),
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => DescriptPage(
                          title: pets[index].title,
                          image: pets[index].image,
                          description: pets[index].description,
                        )));
          },
        );
      },
    );
  }
}
