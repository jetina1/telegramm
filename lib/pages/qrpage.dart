import 'package:flutter/material.dart';

class Qrpage extends StatelessWidget {
  const Qrpage({super.key});

  @override
  Widget build(BuildContext context) {
    return FractionallySizedBox(
      widthFactor: 1.0, // between 0 and 1
      heightFactor: 1.0,
      child: Row(
        children: <Widget>[
          Expanded(
            flex: 1,
            child: Column(
              children: const <Widget>[Text("Hello World")],
            ),
          ),
          Expanded(
            flex: 2,
            child: Column(
              children: const <Widget>[
                Text(
                    "This is a long text this is a long test this is This is a long text this is a long test this is This is a long text this is a long test this is This is a long text this is a long test this is This is a long text this is a long test this is This is a long text this is a long test this is ")
              ],
            ),
          )
        ],
      ),
    );
  }
}
