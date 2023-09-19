import 'package:flutter/material.dart';

class RedContainerWithIconAndText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48,
      width: 319, // Ширина красного контейнера 319px
      margin: EdgeInsets.symmetric(horizontal: 12, vertical: 16),
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.red,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(right: 20),
            child: Icon(
              Icons.person,
              size: 24, // Размер иконки
              color: Colors.white,
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.all(16),
              color: Colors.blue,
              child: Text(
                'Пример текста',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      body: Center(
        child: RedContainerWithIconAndText(),
      ),
    ),
  ));
}
