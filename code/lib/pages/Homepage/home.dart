import 'package:flutter/material.dart';
import 'package:paws/pages/Homepage/cats.dart';
import 'package:paws/pages/Homepage/dogs.dart';
import 'package:paws/pages/Homepage/food.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // final List<dogcat> DC = [
  //   dogcat(
  //     name: 'Cats',
  //     avatar: 'https://placekitten.com/200/200',
  //     title: 'Cats',
  //   ),
  //   dogcat(
  //     name: 'Dogs',
  //     avatar: 'https://placekitten.com/200/200',
  //     title: 'Dogs',
  //   ),
  //   dogcat(
  //     name: 'Food',
  //     avatar: 'https://placekitten.com/200/200',
  //     title: 'Food',
  //   ),
  // ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
          body: Column(children: [
        TabBar(tabs: [
          Tab(
            child: CircleAvatar(
                child: Image.asset(
              "assets/icons/icons8-jake.gif",
              fit: BoxFit.contain,
              height: 60,
              width: 60,
            )),
          ),
          Tab(
            child: CircleAvatar(
                child: Image.asset(
              "assets/icons/icons8-cat.gif",
              fit: BoxFit.contain,
              height: 40,
              width: 40,
            )),
          ),
          Tab(
            child: CircleAvatar(
                backgroundColor: Colors.transparent,
                child: Image.asset(
                  "assets/icons/icons8-pet-shop-32.png",
                  fit: BoxFit.contain,
                  height: 40,
                  width: 40,
                )),
          ),
        ]),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: SizedBox(
            height: 50,
            child: SearchBar(
              trailing: [Icon(Icons.search)],
              hintText: "Search",
            ),
          ),
        ),
        Expanded(
            flex: 4,
            child: TabBarView(children: [
              Container(
                child: const dogs(),
              ),
              Container(
                child: const cats(),
              ),
              Container(
                child: const ItemWidget(),
              ),
            ])),
      ])),
    );
  }
}
