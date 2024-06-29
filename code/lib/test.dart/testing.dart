import 'package:flutter/material.dart';

class PetApp extends StatelessWidget {
  const PetApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Takee'),
        bottom: const TabBar(
          tabs: [
            Tab(text: 'Котики'),
            Tab(text: 'Песики'),
          ],
        ),
      ),
      body: TabBarView(
        children: [
          ListView.builder(
            itemCount: 10,
            itemBuilder: (context, index) {
              return Card(
                child: ListTile(
                  leading: Container(
                    width: 50,
                    height: 50,
                    color: Colors.grey,
                  ),
                  title: Text('Котик ${index + 1}'),
                  subtitle: const Text('Британская короткошерстная'),
                  trailing: IconButton(
                    icon: const Icon(Icons.star),
                    onPressed: () {},
                  ),
                ),
              );
            },
          ),
          ListView.builder(
            itemCount: 10,
            itemBuilder: (context, index) {
              return Card(
                child: ListTile(
                  leading: Container(
                    width: 50,
                    height: 50,
                    color: Colors.grey,
                  ),
                  title: Text('Пёсик ${index + 1}'),
                  subtitle: const Text('Йоркширский терьер'),
                  trailing: IconButton(
                    icon: const Icon(Icons.star),
                    onPressed: () {},
                  ),
                ),
              );
            },
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favorites',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}

