import 'package:flutter/material.dart';
class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Color color = Colors.blueAccent;
    Widget topSection = Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _buildButtonColumn(color, Icons.search, '搜索'),
          _buildButtonColumn(color, Icons.local_movies_sharp, '浏览'),
          _buildButtonColumn(color, Icons.favorite, '收藏'),
          _buildButtonColumn(color, Icons.history, '历史'),
          _buildButtonColumn(color, Icons.settings, '设置'),
        ],
      ),
    );

    return MaterialApp(
      title: 'Flutter layout demo',
      home: Container(
        padding: const EdgeInsets.only(top: 20.0),
        color: Colors.grey[300],
        child: Column(
          children: <Widget>[
            topSection,
          ],
        ),
      ),
    );
  }



  ElevatedButton _buildButtonColumn(Color color, IconData icon, String label) {
    return ElevatedButton.icon(
      label: Text(label),
      icon: Icon(icon),
      style: ElevatedButton.styleFrom(
        primary: Colors.teal,
        onPrimary: Colors.white,
      ),
      onPressed: () {
        print('Pressed');
      },
    );
  }
}
