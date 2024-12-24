import 'package:flutter/material.dart';
import 'package:shoppingla/food.dart';

class Practice extends StatefulWidget {
  static const String id = '/practice';
  const Practice({super.key});

  @override
  State<Practice> createState() => _PracticeState();
}

class _PracticeState extends State<Practice> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
            appBar: AppBar(
              title: Text('list'),
              bottom: TabBar(
                tabs: [
                  Text('veg'),
                  Text('Non-veg'),
                  Text('Favourites'),
                ],
              ),
              actions: [
                Icon(Icons.search),
                SizedBox(
                  width: 10,
                ),
                PopupMenuButton(
                    itemBuilder: (context) => [
                          PopupMenuItem(value: 1, child: Text('Fast Food')),
                          PopupMenuItem(value: 2, child: Text('Desi Food')),
                          PopupMenuItem(value: 3, child: Text('Chinese Food')),
                          PopupMenuItem(value: 4, child: Text('Korean Food')),
                        ])
              ],
            ),
            drawer: SafeArea(
                child: Drawer(
              child: ListView(
                children: [
                  ListTile(
                    leading: Text('helooooooo'),
                    title: Text('hehehe nice'),
                    subtitle: Text('people'),
                    trailing: Text('hehenice'),
                    onTap: () {
                      Navigator.pushNamed(context, Food.id);
                    },
                  ),
                ],
              ),
            )),
            body: TabBarView(children: [
              ListView.builder(itemBuilder: (context, index) {
                return ListTile(
                  leading: Image(image: AssetImage('images/images(3).jpg')),
                );
              }),
              ListView.builder(itemBuilder: (context, index) {
                return ListTile(
                  leading: Image(image: AssetImage('images/images(3).jpg')),
                );
              }),
              ListView.builder(itemBuilder: (context, index) {
                return ListTile(
                  leading: Image(image: AssetImage('images/goku.jpg')),
                );
              })
            ])));
  }
}
