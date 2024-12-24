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
              backgroundColor: Colors.orange,
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
                    leading: CircleAvatar(
                      backgroundImage: AssetImage('images/Spac.png'),
                    ),
                    trailing: Text('Killer Menu'),
                    title: Text('Our Specials'),
                    subtitle: Text('Halloween Kits!'),
                    onTap: () {
                      Navigator.pushNamed(context, Food.id);
                    },
                  ),
                  ListTile(
                    leading: CircleAvatar(
                      backgroundImage: AssetImage('images/Spac.png'),
                    ),
                    trailing: Text('Easy Menu'),
                    title: Text('Kids Specials'),
                    subtitle: Text('Toys Available'),
                    onTap: () {
                      Navigator.pushNamed(context, Food.id);
                    },
                  ),
                ],
              ),
            )),
            body: TabBarView(children: [
              ListView.builder(
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    return ListTile(
                      leading: CircleAvatar(
                        backgroundImage: AssetImage(index % 3 == 0
                            ? 'images/goku.jpg'
                            : index % 3 == 1
                                ? 'images/blah.jpg'
                                : 'images/hehe.png'),
                      ),
                      title: Text(index % 3 == 0
                          ? 'Kindiko'
                          : index & 3 == 1
                              ? 'Lakmaino'
                              : 'Sinaka'),
                      subtitle: Text(index / 2 == 0
                          ? 'by Jimmy O Yang'
                          : 'by Kim Tae Jung'),
                      trailing: Icon(Icons.event_available),
                    );
                  }),
              ListView.builder(
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    return ListTile(
                        title: Text(index % 3 == 0
                            ? 'Bef Barbeque'
                            : index & 3 == 1
                                ? 'Steak'
                                : 'Chicken'),
                        subtitle: Text(index / 2 == 0
                            ? 'by Harry Van Dusen'
                            : 'by Colby Hans'),
                        trailing: Icon(Icons.event_available),
                        leading: CircleAvatar(
                            backgroundImage: AssetImage(index % 3 == 0
                                ? 'images/beef.png'
                                : index % 3 == 1
                                    ? 'images/lala.png'
                                    : 'images/chick.png')));
                  }),
              ListView.builder(
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    return ListTile(
                        title: Text(index % 3 == 0
                            ? 'Bef Barbeque'
                            : index & 3 == 1
                                ? 'Steak'
                                : 'Chicken'),
                        subtitle: Text(index % 3 == 0
                            ? 'by Harry Van Dusen'
                            : index % 3 == 1
                                ? 'by Jimmy O Yang'
                                : 'by Colby Hans'),
                        trailing: Icon(Icons.event_available),
                        leading: CircleAvatar(
                            backgroundImage: AssetImage(index % 3 == 0
                                ? 'images/beef.png'
                                : index % 3 == 1
                                    ? 'images/goku.jpg'
                                    : 'images/chick.png')));
                  })
            ])));
  }
}
