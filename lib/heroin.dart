import 'package:flutter/material.dart';


class Heroin extends StatelessWidget {
  Heroin({Key key}):super(key:key);
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      color: Colors.orange[100],
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(top:15),
                width: 200,
                child: Text('Over 1,000,000 video courses'),
              ),
              SizedBox(height: 20),
              FlatButton(
                textColor: Colors.grey[900],
                color: Colors.orange[300],
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                padding: EdgeInsets.symmetric(vertical: 15, horizontal: 35),
                child: Text('Browse all courses'),
                onLongPress: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}