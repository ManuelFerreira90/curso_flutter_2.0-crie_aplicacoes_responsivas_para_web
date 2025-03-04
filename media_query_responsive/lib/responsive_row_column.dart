import 'package:flutter/material.dart';

class ResponsiveRowColumn extends StatefulWidget {
  const ResponsiveRowColumn({super.key, required this.title});

  final String title;

  @override
  State<ResponsiveRowColumn> createState() => _ResponsiveRowColumnState();
}

class _ResponsiveRowColumnState extends State<ResponsiveRowColumn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(widget.title),
      ),
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: Container(color: Colors.black),
          ),
          Expanded(
            flex: 3,
            child: Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Container(color: Colors.orange),
                ),
                Expanded(
                  flex: 1,
                  child: Container(color: Colors.pink),
                ),
                Expanded(
                  flex: 1,
                  child: Container(color: Colors.white),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(color: Colors.red),
          ),
        ],
      ),
    );
  }
}
