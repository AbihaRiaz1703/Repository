import 'package:flutter/material.dart';

class Food extends StatefulWidget {
  static const String id = 'food.id';
  const Food({super.key});

  @override
  State<Food> createState() => _FoodState();
}

class _FoodState extends State<Food> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: Text('food'),
            backgroundColor: Colors.orange,
            centerTitle: false,
            bottom: TabBar(
              tabs: [Text('Foods'), Text('Beverages'), Text('deserts')],
            ),
          ),
          body: TabBarView(children: [
            ListView.builder(
                itemCount: 3,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: Image(image: AssetImage('images/image copy.png')),
                  );
                }),
            ListView.builder(
                itemCount: 3,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: Image(image: AssetImage('images/image.png')),
                  );
                }),
            ListView.builder(
                itemCount: 3,
                itemBuilder: (context, index) {
                  return ListTile(
                      leading: CircleAvatar(
                          backgroundImage: AssetImage(index / 3 == 0
                              ? 'images/image copy.png'
                              : 'images/blah.jpg')));
                })
          ]),
        ));
  }
}
