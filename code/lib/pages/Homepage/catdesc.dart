import 'package:flutter/material.dart';
import 'package:paws/themes/themes.dart';
import 'package:paws/widgets/cta_buton.dart';
import 'package:like_button/like_button.dart';

class DescriptPage extends StatelessWidget {
  final String title;
  final String image;
  final String description;

  const DescriptPage({
    Key? key,
    required this.title,
    required this.image,
    required this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          title,
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      bottomSheet: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          children: [
            Expanded(child: CTAButton(text: "Adopt Me")),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(height: 30, child: LikeButton()),
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(image), // Assuming image is an asset path
                const SizedBox(height: 16),
                Padding(
                  padding: const EdgeInsets.all(17.0),
                  child: Container(
                    child: Text(
                      description,
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        fontFamily: 'SpaceGrotesk',
                        fontWeight: FontWeight.bold,
                        fontSize: 22,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
