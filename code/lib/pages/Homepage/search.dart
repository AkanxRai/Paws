import 'package:flutter/material.dart';
import 'package:paws/themes/themes.dart';
import 'package:paws/widgets/cta_buton.dart';

class search extends StatelessWidget {
  const search({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          Column(
            children: [
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'Liked',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                child: CTAButton(
                  text: "Proceed to Adopt",
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
