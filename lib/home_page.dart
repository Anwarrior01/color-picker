import 'package:color_picker/color_screen.dart';
import 'package:color_picker/component.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("PICK A COLOR TO SEE IT IN FULL SCREEN :)"),
      ),
      body: Container(
        margin: EdgeInsets.all(4),
        child: GridView.count(
          crossAxisCount: 3,
          children: colorList
              .map(
                (colorItem) => InkWell(
                  onTap: () {
                    Navigator.push(context,MaterialPageRoute(builder: (context)=>ColorScreen(colorItem)));
                  },
                  child: Container(
                    margin: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: colorItem,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.5),
                          spreadRadius: 2,
                          blurRadius: 4,
                          offset: const Offset(
                            1,
                            3,
                          ), // changes position of shadow
                        ),
                      ],
                    ),
                  ),
                ),
              )
              .toList(),
        ),
      ),
    );
  }
}
