import 'package:flutter/material.dart';
import 'header.dart';
import 'recommended.dart';



class CoursePage extends StatefulWidget {
  @override
  _CoursePageState createState() => _CoursePageState();
}



// class _CoursePageState extends State<CoursePage> {
class _CoursePageState extends State<CoursePage> with SingleTickerProviderStateMixin {
  /// [---------- initialDefinition ----------]
  AnimationController _controller;
  Animation<Offset> _animationHorizontal;
  Animation<Offset> _animationVertical;
  /// [---------- initState() ----------]
  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 1),
    );
    _animationHorizontal = Tween<Offset>(   /// [_animationHorizontal]
      begin: Offset(-1.0, 0.0),
      end: Offset.zero,
    ).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.easeInOutBack,
    ));
    _animationVertical = Tween<Offset>(   /// [_animationVertical]
      begin: Offset(0.0, 1.5),
      end: Offset.zero,
    ).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.easeInOutBack,
    ));
    _controller.forward();
  }
  /// [---------- dispose() ----------]
  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }



  /// [---------- build() ----------]
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: <Widget>[
                // Header(title: 'Courses'),
                // Recommended(),
                SlideTransition(   /// [SlideTransition()]
                  position: _animationHorizontal,
                  child: Header(title: 'Courses'),
                ),
                SlideTransition(   /// [SlideTransition()]
                  position: _animationVertical,
                  child: Recommended(),
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _controller.reverse().then((_) {   /// [追加]アニメに合わせて動かすため
            Navigator.of(context).pop();
          });
        },
        child: Icon(Icons.arrow_back),
      ),
    );
  }
}