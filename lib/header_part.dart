import 'package:flutter/material.dart';


class HeaderPart extends StatefulWidget {
  @override
  _HeaderPartState createState() => _HeaderPartState();
}


class _HeaderPartState extends State<HeaderPart> {
  @override
  Widget build(BuildContext context) {
    final double height = 200;
    return Container(
      height: height,
      child: Stack(    /// [Stack]重ねる=くり抜き風
        children: <Widget>[
          Align(
            alignment: Alignment.topCenter,
            child: _HeaderBackground(height: height),  /// [高さ合わせるべくclassに渡す]named parameterで渡す
          ),
          Align(
            alignment: Alignment.topCenter,
            child: _HeaderCircles(height: height),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: _HeaderTitle(),   /// [タイトルゆえpassingなし]
          ),
          Positioned(  /// [カスタムで遷移ボタンを追加する場合Stack]
            top: 77,
            left: 18,
            child: _HeaderBackButton(),
          ),
          Positioned(  /// [カスタムで遷移ボタンを追加する場合Stack]
            top: 77,
            right: 18,
            child: _HeaderForwardButton(),
          ),
        ],
      ),
    );
  }
}



/// ========[sup Class]================================================
/// +++[_HeaderBackground]++++++++++++++++++++++++++
class _HeaderBackground extends StatelessWidget {
  final double height;
  _HeaderBackground({Key key, @required this.height}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: _HeaderCurveClipper(),
      child: Container(
        width: double.infinity,
        height: height,
        decoration: BoxDecoration(
          gradient: LinearGradient(  /// [Gradiation]
            begin: FractionalOffset.topLeft,
            end: FractionalOffset.bottomRight,
            colors: [Colors.purple[300], Colors.pink[200]],
            stops: [0, 1],
          ),
        ),
      ),
    );
  }
}
class _HeaderCurveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    return Path()
      ..lineTo(0, size.height * 0.77)
      ..quadraticBezierTo(
        size.width * 0.55,
        size.height,
        size.width,
        size.height * 0.33,
      )
      ..lineTo(size.width, 0.11)
      ..close();
  }
  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}


/// +++[_HeaderCircles]+++++++++++++++++++++++++++++++
class _HeaderCircles extends StatelessWidget{
  // final int height;
  final double height;
  _HeaderCircles({Key key, @required this.height}) : super(key:key);
  @override
  Widget build(BuildContext context) {
    return CustomPaint(     /// [CustomPaint]
      painter: _HeaderCirclePainter(),
      child: Container(
        width: double.infinity,
        height: height,
      ),
    );
  }
}
class _HeaderCirclePainter extends CustomPainter {  /// [extends CustomPainter]
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.white.withOpacity(0.4)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 6;
    canvas.drawCircle(
      Offset(size.width * 0.25, size.height * 0.4),
      12,
      paint,
    );
    canvas.drawCircle(
      Offset(size.width * 0.75, size.height * 0.2),
      12,
      paint,
    );
  }
  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}


/// +++[_HeaderTitle]+++++++++++++++++++++++++
class _HeaderTitle extends StatelessWidget {
  // _HeaderTitle({Key key,}) : super(key:key);
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text("Welcome", style:TextStyle(fontSize: 30.0)),
        SizedBox(height: 10.0),
        Text("play after Sign in", style:TextStyle(fontSize: 20.0)),
      ],
    );
  }
}


/// +++[_HeaderBackButton && _HeaderForwardButton]+++++++++++++++++++++++++
class _HeaderBackButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: IconButton(
        icon: Icon(Icons.arrow_back),
        onPressed: (){},
        color: Colors.white54,
      ),
    );
  }
}
class _HeaderForwardButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: IconButton(
        icon: Icon(Icons.arrow_forward),
        onPressed: (){},
        color: Colors.white54,
      ),
    );
  }
}