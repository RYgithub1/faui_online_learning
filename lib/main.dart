import 'package:flutter/material.dart';
import 'featured.dart';
import 'header.dart';
import 'heroin.dart';
import 'trend_course.dart';


void main(List<String> args) {runApp(MyApp());}


const figmaLogoUrl =
  'https://user-images.githubusercontent.com/7200238/83031886-1ce87880-a070-11ea-89c8-5cee840d5782.png';
const sketchLogoUrl =
  'https://user-images.githubusercontent.com/7200238/83145378-a7dc7800-a12f-11ea-93e1-32c7982c5e63.png';
const xdLogoUrl =
  'https://user-images.githubusercontent.com/7200238/83145578-f558e500-a12f-11ea-85fa-3e26a966d180.png';


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Terakoya',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: TopPage(),
    );
  }
}



class TopPage extends StatefulWidget {
  @override
  _TopPageState createState() => _TopPageState();
}
class _TopPageState extends State<TopPage> with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(   /// [body: SafeArea(上位)] -> SingleChildScrollViewをwrap
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: [
                Header(title: 'Terakoya'),
                Heroin(),
                Featured(),
                TrendCourse(),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.list),
      ),
    );
  }
}