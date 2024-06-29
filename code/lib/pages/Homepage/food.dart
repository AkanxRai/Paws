import 'package:flutter/material.dart';
import 'package:paws/pages/Homepage/square.dart';
import 'package:paws/pages/Homepage/pet.dart';

class ItemWidget extends StatefulWidget {
  const ItemWidget({Key? key});

  @override
  State<ItemWidget> createState() => _ItemWidgetState();
}

class _ItemWidgetState extends State<ItemWidget> {
  final List<Item> itemList = [
    Item(
      name: 'Item 1',
      image: 'assets/images/Items/Item 1.jpeg',
      title: 'Item 1',
      description: 'Description ',
    ),
    Item(
      name: 'Item 2',
      image: 'assets/images/Items/Item 2.jpg',
      title: 'Item 2',
      description: 'Description ',
    ),
    Item(
      name: 'Item 3',
      image: 'assets/images/Items/Item 3.jpg',
      title: 'Item 3',
      description: 'Description ',
    ),
    Item(
      name: 'Item 4',
      image: 'assets/images/Items/item 4.jpg',
      title: 'Item 4',
      description: 'Description ',
    ),
    Item(
      name: 'Item 5',
      image: 'assets/images/Items/item 5.jpg',
      title: 'Item 5',
      description: 'Description ',
    ),
    Item(
      name: 'Item 6',
      image: 'assets/images/Items/item 6.jpeg',
      title: 'Item 6',
      description: 'Description ',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 8.0,
        mainAxisSpacing: 8.0,
      ),
      itemCount: itemList.length,
      itemBuilder: (BuildContext context, int index) {
        return MySquare(
          pet: itemList[index],
        );
      },
    );
  }
}
