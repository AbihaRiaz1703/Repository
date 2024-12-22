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
          bottom: TabBar(tabs: [
            Text('veg'),
            Text('Non-veg'),
            Text('Favourites'),
          ]),
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
