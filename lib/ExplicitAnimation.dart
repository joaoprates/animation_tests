import 'package:flutter/material.dart';

class ExplicitAnimation extends StatefulWidget {
  @override
  _ExplicitAnimationState createState() => _ExplicitAnimationState();
}

class _ExplicitAnimationState extends State<ExplicitAnimation>
    with SingleTickerProviderStateMixin {
  AnimationController _animationController;
  AnimationStatus _animationStatus;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _animationController =
        AnimationController(duration: Duration(seconds: 5), vsync: this)
          ..repeat()
          ..addStatusListener((status) {
            _animationStatus = status;
          });
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: <Widget>[
          Container(
            width: 300,
            height: 400,
            child: RotationTransition(
              alignment: Alignment.center,
              child: Image.asset("images/logo.png"),
              turns: _animationController,
            ),
          ),
          RaisedButton(
            child: Text("Animate"),
            onPressed: () {
              if (_animationStatus == AnimationStatus.dismissed) {
                //_animationController.forward();
                _animationController.repeat();
              } else {
                _animationController.reverse();
              }

              /*
            if( _animationController.isAnimating ){
              _animationController.stop();
            }else{
              _animationController.repeat();
            }
            */
            },
          )
        ],
      ),
    );
  }
}
