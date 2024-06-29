import 'package:flutter/material.dart';

class PetCard extends StatelessWidget {
  final String petName;

  const PetCard({super.key, required this.petName});

  @override
  Widget build(BuildContext context) {
  
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            petName,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          // Description (customize this as needed)
          const Text('Description goes here.'),
        ],
      ),
    );
  }
}
