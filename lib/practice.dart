import 'package:flutter/material.dart';

class Practice extends StatefulWidget {
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
        body: TabBarView(children: [
          Text('veg'),
          Text('Non-veg'),
          Text('favourite'),
        ]),
      ),
    );
  }
}
