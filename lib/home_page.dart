import 'package:flutter/material.dart';
import 'footer_part.dart';
import 'header_part.dart';
import 'input_part.dart';


class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(   /// 部分のcolumnでなく全体のこっち[SingleChildScrollView]
          child: Column(
            children: [
              // HeaderPart(),
              InputPart(),
              FooterPart(),
            ]
          ),
        ),
      )
    );
  }
}