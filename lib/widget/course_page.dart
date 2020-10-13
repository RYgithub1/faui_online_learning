import 'package:flutter/material.dart';
import 'header.dart';
import 'recommended.dart';



class CoursePage extends StatefulWidget {
  @override
  _CoursePageState createState() => _CoursePageState();
}



class _CoursePageState extends State<CoursePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: <Widget>[
                Header(title: 'Courses'),
                Recommended(),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).pop();
        },
        child: Icon(Icons.arrow_back),
      ),
    );
  }
}