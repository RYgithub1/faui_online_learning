import 'package:flutter/material.dart';


class Header extends StatelessWidget {
  // String title;
  final String title;
  // constで決まっているので固定
  const Header({Key key, @required this.title}):super(key:key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(vertical: 24),
      alignment: Alignment.centerLeft,
      child: Text(title, style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
      ),
    );
  }
}