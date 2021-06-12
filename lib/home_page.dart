import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MyHomePage extends StatelessWidget {
  final String _title;

  MyHomePage(this._title);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_title),
      ),
      body: Container(
        child: GridView.count(
          // Create a grid with 2 columns. If you change the scrollDirection to
          // horizontal, this produces 2 rows.
          crossAxisCount: 2,
          // Generate 100 widgets that display their index in the List.
          children: List.generate(100, (index) {
            return Center(
              // child: Text(
              //   'Item $index',
              //   style: Theme.of(context).textTheme.headline5,
              // ),
              child: Expanded(
                  child: FadeInImage.assetNetwork(
                      placeholder: 'assets/images/no_internet_placeholder.jpeg',
                      image: 'https://picsum.photos/id/$index/100')),
            );
          }),
        ),
      ),
    );
  }
}
