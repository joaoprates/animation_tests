import 'package:flutter/material.dart';

class ImplicitAnimation extends StatefulWidget {
  @override
  _ImplicitAnimationState createState() => _ImplicitAnimationState();
}

class _ImplicitAnimationState extends State<ImplicitAnimation> {

  bool _status = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        AnimatedContainer(
          padding: EdgeInsets.all(20),
          width: _status ? 200 : 300 ,
          height: _status ? 300 : 200,
          color: _status ? Colors.white : Colors.purpleAccent,
          child: Image.asset("images/logo.png"),
          duration: Duration(seconds: 2),
          curve: Curves.elasticInOut,
        ),
        RaisedButton(
          child: Text("Animate"),
          onPressed: (){
            setState(() {
              _status = !_status;
            });
          },
        )
      ],
    );
  }
}
