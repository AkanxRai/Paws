import 'package:flutter/material.dart';
import 'package:paws/pages/Homepage/cats.dart'; // Assuming Pet class is defined in this file

class petTab extends StatefulWidget {
  final dogcat; // Assuming dogcat is an instance of the dogcat class

  const petTab({super.key, required this.dogcat});

  @override
  State<petTab> createState() => _petTabState();
}

class _petTabState extends State<petTab> {
  bool isPressed = true;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isPressed = !isPressed;
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const cats()),
          );
        });
      },
      child: Padding(
        padding: const EdgeInsets.fromLTRB(10, 20, 10, 20),
        child: Container(
          width: 110,
          decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            borderRadius: const BorderRadius.all(Radius.circular(30)),
            border: Border.all(width: 2),
            color: isPressed ? Colors.black : Colors.white,
          ),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(1),
                child: CircleAvatar(
                  backgroundImage: NetworkImage(
                    widget.dogcat.avatar,
                  ),
                ),
              ),
              Text(
                widget.dogcat.title,
                style: TextStyle(
                    color: isPressed ? Colors.white : Colors.black,
                    fontSize: 17,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
