import 'package:flutter/material.dart';

class TweenAnimation extends StatefulWidget {
  @override
  _TweenAnimationState createState() => _TweenAnimationState();
}

class _TweenAnimationState extends State<TweenAnimation> {

  static final colorTween = ColorTween(begin: Colors.white, end: Colors.orange);

  @override
  Widget build(BuildContext context) {
    return Center(

      /*
      child: TweenAnimationBuilder(
        duration: Duration(seconds: 2),
        tween: Tween<double>(begin: 0, end: 6.28),
        builder: (BuildContext context, double angle, Widget widget){
          return Transform.rotate(
            angle: angle,
            child: Image.asset("images/logo.png"),
          );
        },
      ),
      */

      /*
      child: TweenAnimationBuilder(
        duration: Duration(seconds: 1),
        tween: Tween<double>(begin: 50, end: 180),
        builder: (BuildContext context, double width, Widget widget){
          return Container(
            color: Colors.green,
            width: width,
            height: 60,
          );
        },
      ),
       */
      child: TweenAnimationBuilder(
        duration: Duration(seconds: 2),
        tween: colorTween,
        child: Image.asset("images/stars.jpg"),
        builder: (BuildContext context, Color cor, Widget widget){
          return ColorFiltered(
            colorFilter: ColorFilter.mode(cor, BlendMode.overlay),
            child: widget,
          );
        },
      ),




    );
  }
}
