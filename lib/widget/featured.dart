import 'package:flutter/material.dart';
import '../main.dart';


class Featured extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          width: double.infinity,
          padding: EdgeInsets.only(top:40, left:10),
          alignment: Alignment.centerLeft,
          child: Text(
            'Featured',
            style: TextStyle(fontSize:20, fontWeight: FontWeight.bold),
          ),
        ),
        Stack(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(top:20),
              child: _StackOnCard(),
            ),
            Align(
              alignment: Alignment.topCenter,  /// [ロゴStackの位置固定]
              child: _LogoStackOn(size:50),
            ),
          ],
        ),
      ],
    );
  }
}



/// [----- sup -----]
class _StackOnCard extends StatelessWidget{
  const _StackOnCard({Key key,}):super(key:key);
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.yellow[200],
      elevation: 10,
      shape: RoundedRectangleBorder(  /// [shape: RoundedRectangleBorder]
        borderRadius: BorderRadius.circular(20),
      ),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal:10,vertical:30),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(Icons.navigate_before),
            Container(
              width: 200,
              child: Column(
                children: [
                  Text(
                    'Figma: Solid Foundations',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height:20),
                  Text(
                    'The most complete beginner to advanced guide',
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
            Icon(Icons.navigate_next),
          ],
        ),
      ),
    );
  }
}

class _LogoStackOn extends StatelessWidget{
  final double size;  /// [only final , not const]
  _LogoStackOn({Key key, @required this.size}):super(key:key);
  @override
  Widget build(BuildContext context) {
    return ClipOval(   /// [ClipOval()]
      child: Container(
        width: size,
        height: size,
        padding: EdgeInsets.all(10),
        color: Colors.yellow[200],
        child: Image.network(
          figmaLogoUrl,
          fit: BoxFit.contain,  /// [BoxFit.contain]
        ),
      ),
    );
  }
}