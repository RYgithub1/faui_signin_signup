import 'package:flutter/material.dart';


class FooterPart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Expanded(
          flex:2,
          child: Center(child: Text("If you don\'t have any account,  ..")),
        ),
        Expanded(
          flex:1,
          child: FlatButton(
            onPressed: (){},
            child: Center(child: Text("Sign Up")),
          ),
        ),
      ],
    );
  }
}