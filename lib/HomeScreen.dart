import 'package:flutter/material.dart';
import 'package:livetest10/NewsFeedList.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('News Feed'),
        elevation: 6,
      ),
      body: OrientationBuilder(
        builder: (context, orientation) {
          if (orientation == Orientation.portrait) {
            return ListView.builder(
              itemCount: newsList.length,
              itemBuilder: (context, index) {
                return Container(
                  margin: EdgeInsets.symmetric(vertical: 10),
                  child: Container(
                    width: 150,
                    height: 150,
                    child: Image.network(newsList[index]),
                  ),
                );
              },
            );
          } else {
            return GridView.count(
              crossAxisCount: 2,
              children: List.generate(
                newsList.length,
                    (index) => Container(
                  width: 150,
                  height: 150,
                  margin: EdgeInsets.all(10),
                  child: Image.network(newsList[index]),
                ),
              ),
            );
          }
        },
      ),
    );
  }
}