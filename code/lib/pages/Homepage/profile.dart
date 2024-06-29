import 'package:flutter/material.dart';
import 'package:paws/themes/themes.dart';

class profile extends StatefulWidget {
  const profile({super.key});

  @override
  State<profile> createState() => _AkCardState();
}

class _AkCardState extends State<profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.fromLTRB(30, 40, 30, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Center(
              child: CircleAvatar(
                backgroundImage: AssetImage(
                  'assets/images/flutter-circleavatar-basic.jpg',
                ),
                radius: 40,
              ),
            ),
            Divider(
              height: 90,
              color: Colors.grey[800],
            ),
            const Text(
              'NAME',
              style: TextStyle(
                color: grey,
                letterSpacing: 2.0,
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            const Text(
              'Rahul Raj',
              style: TextStyle(
                color: black,
                letterSpacing: 2.0,
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            const Text(
              'Pet Owned',
              style: TextStyle(
                color: grey,
                letterSpacing: 2.0,
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            const Text(
              'German shepard',
              style: TextStyle(
                color: black,
                letterSpacing: 2.0,
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            const Row(
              children: [
                Icon(
                  Icons.email,
                  color: grey,
                ),
                SizedBox(width: 10),
                Text(
                  'akanxnin@gmail.com',
                  style: TextStyle(
                    color: black,
                    fontSize: 20,
                    letterSpacing: 1,
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
