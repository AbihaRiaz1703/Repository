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
                    leading: CircleAvatar(
                        child: Image(
                            image: AssetImage(index % 3 == 0
                                ? 'images/bur.png'
                                : index % 3 == 1
                                    ? 'images/hd.png'
                                    : 'images/past.png'))),
                    title: Text(index % 3 == 0
                        ? 'Buger'
                        : index % 3 == 1
                            ? 'Hotdog'
                            : 'Pasta'),
                    trailing: Text(index % 3 == 0
                        ? 'Price: 1700'
                        : index % 3 == 1
                            ? 'Price: 1900'
                            : 'price: 999'),
                    subtitle: Text(index % 3 == 0
                        ? '2 pieces'
                        : index % 3 == 1
                            ? '10 pieces'
                            : '2 servings'),
                  );
                }),
            ListView.builder(
                itemCount: 3,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: CircleAvatar(
                        backgroundImage: AssetImage(index % 3 == 0
                            ? 'images/dri.png'
                            : index % 3 == 1
                                ? 'images/bri.png'
                                : 'images/alc.png')),
                    title: Text(index % 3 == 0
                        ? 'Soda'
                        : index % 3 == 1
                            ? 'Juices'
                            : 'Alcohols'),
                    trailing: Icon(Icons.emoji_food_beverage),
                    subtitle: Text(index % 3 == 0
                        ? 'For All'
                        : index % 3 == 1
                            ? 'For All'
                            : 'Only For 18+'),
                  );
                }),
            ListView.builder(
                itemCount: 3,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: CircleAvatar(
                        backgroundImage: AssetImage(index % 3 == 0
                            ? 'images/sta.png'
                            : index % 3 == 1
                                ? 'images/pea.png'
                                : 'images/cake.png')),
                    title: Text(index % 3 == 0
                        ? 'Strawberry Dessert'
                        : index % 3 == 1
                            ? 'Peanut Butter Pie'
                            : 'Choco Cake'),
                    trailing: Icon(Icons.cake_outlined),
                    subtitle: Text(index % 3 == 0
                        ? '12 pieces'
                        : index % 3 == 1
                            ? '16 Pieces pack'
                            : '1 cake'),
                  );
                })
          ]),
        ));
  }
}
