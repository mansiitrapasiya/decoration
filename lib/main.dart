import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: LayOutDesign(),
    );
  }
}

class LayOutDesign extends StatefulWidget {
  const LayOutDesign({Key? key}) : super(key: key);

  @override
  State<LayOutDesign> createState() => _LayOutDesign();
}

class _LayOutDesign extends State<LayOutDesign> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "My first App",
          textDirection: TextDirection.rtl,
        ),
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: Container(
            height: 200,
            width: 200,
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(90),
                bottomRight: Radius.circular(90),
              ),
              boxShadow: [
                BoxShadow(
                    blurRadius: 20,
                    spreadRadius: 2,
                    color: Colors.green,
                    offset: Offset(40, 40))
              ],
              gradient: RadialGradient(colors: [
                Colors.deepOrange,
                Colors.black,
                Colors.green,
              ]),
              border: Border.all(
                  color: Colors.pink, width: 5, style: BorderStyle.solid),
            )),
      ),
    );
  }
}
