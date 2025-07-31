import 'package:flutter/material.dart';

class ColorScreen extends StatelessWidget {
  ColorScreen(this.screenColor, {Key? key}) : super(key: key);
  Color screenColor;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(leading: BackButton(), backgroundColor: screenColor),
      body: Container(color: screenColor),
    );
  }
}
