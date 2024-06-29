import 'package:flutter/material.dart';
import 'package:paws/themes/themes.dart';

class MySquare extends StatelessWidget {
  final dynamic pet;

  const MySquare({super.key, required this.pet});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: white,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              spreadRadius: 5,
              blurRadius: 10,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        height: 250,
        width: 180,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Image
            Expanded(
              child: ClipRRect(
                borderRadius: const BorderRadius.vertical(
                  top: Radius.circular(10),
                  bottom: Radius.circular(10),
                ),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.black,
                  ),
                  child: Image.asset(
                    pet.image,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
            // Title
            Expanded(
              flex: 0,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  pet.title,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ),
            // Description
            SizedBox(
              height: 10,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(pet.description),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
