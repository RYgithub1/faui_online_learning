import 'package:flutter/material.dart';
import 'widget/course_page.dart';
import 'widget/featured.dart';
import 'widget/header.dart';
import 'widget/heroin.dart';
import 'widget/trend_course.dart';


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
  /// [---------- initial ----------]
  AnimationController _controller;
  Animation<Offset> _animation1;
  Animation<Offset> _animation2;
  Animation<Offset> _animation3;
  Animation<Offset> _animation4;
  /// [---------- initState() ----------]
  @override
  void initState() {
    super.initState();   /// [先]
    _controller = AnimationController(   /// [定義したinitialへ、initStateで初期値]
      vsync: this,
      duration: Duration(seconds: 1),
    );
    final tween = Tween<Offset>(
      begin: Offset.zero,
      end: Offset(-1.0, 0.0),
    );
    _animation1 = tween.animate(CurvedAnimation(   /// [アニメーションを区間1224で分ければよい]
      parent: _controller,   /// [initial定義->initState()初期値を代入-> 済みの_controllerを基に -> animationを定義]
      curve: Interval(0.0, 0.7, curve: Curves.easeInOutBack),   /// [同じeaseInOutBackを使いインターバルのみ変えて流れを作る]
    ));
    _animation2 = tween.animate(CurvedAnimation(
      parent: _controller,
      curve: Interval(0.1, 0.8, curve: Curves.easeInOutBack),
    ));
    _animation3 = tween.animate(CurvedAnimation(
      parent: _controller,
      curve: Interval(0.2, 0.9, curve: Curves.easeInOutBack),
    ));
    _animation4 = tween.animate(CurvedAnimation(
      parent: _controller,
      curve: Interval(0.3, 1.0, curve: Curves.easeInOutBack),
    ));
  }
  /// [---------- dispose() ----------]
  @override
  void dispose() {
    _controller.dispose();
    super.dispose();   /// [後]
  }


  /// [---------- build() ----------]
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(   /// [body: SafeArea(上位) -> SingleChildScrollView .. wrap]
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal:16),
            child: Column(
              children: [
                // Header(title: 'Terakoya'),
                // Heroin(),
                // Featured(),
                // TrendCourse(),
                SlideTransition(   /// [SlideTransition()]
                  position: _animation1,
                  child: Header(title: 'Terakoya'),
                ),
                SlideTransition(   /// [SlideTransition()]
                  position: _animation2,
                  child: Heroin(),
                ),
                SlideTransition(   /// [SlideTransition()]
                  position: _animation3,
                  child: Featured(),
                ),
                SlideTransition(   /// [SlideTransition()]
                  position: _animation4,
                  child: TrendCourse(),
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.library_add_check),
        onPressed: () {
          _controller.forward().then((_) {   /// [追加]アニメに合わせて動かすため
            Navigator.of(context).push(
              PageRouteBuilder(pageBuilder: (_, __, ___) => CoursePage()),
            )
            .then((_) => _controller.reverse());   /// [追加]アニメに合わせて動かすため
          });
        }
      ),
    );
  }
}