import 'package:flutter/material.dart';


class InputPart extends StatefulWidget {
  InputPart({Key key}) : super(key: key);
  @override
  _InputPartState createState() => _InputPartState();
}

class _InputPartState extends State<InputPart> {
  String _textEmail = "";
  String _textPassword = "";

  void _textEmailChange(String value1) {
    setState(() {
      _textEmail = value1;
    });
  }
  void _textPasswordChange(String value2) {
    setState(() {
      _textPassword = value2;
    });
  }



  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(height:20.0),
        Text("check ur email:$_textEmail", style:TextStyle(color: Colors.amber)),
        /// Text("password:$_textPassword", style:TextStyle(color: Colors.amber)), ///[表示されたら困る為///]

        TextField(  /// [TextField...EMAIL]
          maxLength: 88,  // 入力数
          maxLengthEnforced: false,
          style: TextStyle(color: Colors.yellow[100]),
          obscureText: false,  /// [not hidden]
          maxLines:1 ,
          onChanged: _textEmailChange,
          decoration: InputDecoration(
            labelText: 'Email',
            hintText: 'Email here',
            icon: Icon(Icons.security),
          ),
        ),
        TextField( /// [TextField...PASSWORD]
          maxLength: 77,  // 入力数
          maxLengthEnforced: false,
          style: TextStyle(color: Colors.green[100]),
          obscureText: true,  /// [be hidden]
          maxLines:1 ,
          onChanged: _textPasswordChange,
          decoration: InputDecoration(
            labelText: 'Password',
            hintText: 'Password here',
            icon: Icon(Icons.security),
          ),
        ),
        TextButton(
          // onPressed: (){},
          onPressed: () => MaterialPageRoute(
            builder: (context){
              return null;
            }),
          child: Text("Forget Password?"),
        ),
        RaisedButton(
          onPressed: (){},
          child: Text("Sign in"),
        ),
        Text("OR"),
        Text("Contact with people below"),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(icon: Icon(Icons.person_add), onPressed: (){}),
            IconButton(icon: Icon(Icons.person_add_disabled), onPressed: (){}),
          ],
        ),
        SizedBox(height:20.0),
      ],
    );
  }
}