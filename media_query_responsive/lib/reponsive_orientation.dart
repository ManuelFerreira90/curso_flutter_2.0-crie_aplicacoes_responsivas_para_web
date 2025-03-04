import 'package:flutter/material.dart';

class ReponsiveOrientation extends StatefulWidget {
  const ReponsiveOrientation({super.key});

  @override
  State<ReponsiveOrientation> createState() => _ReponsiveOrientationState();
}

class _ReponsiveOrientationState extends State<ReponsiveOrientation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Orientation'),
      ),
      body: OrientationBuilder(
        builder: (context, orientation) {
          return GridView.count(
            crossAxisCount: orientation == Orientation.portrait ? 2 : 3,
            children: [
              Container(
                color: Colors.red,
              ),
              Container(
                color: Colors.black,
              ),
              Container(
                color: Colors.yellow,
              ),
              Container(
                color: Colors.red,
              ),
              Container(
                color: Colors.black,
              ),
              Container(
                color: Colors.yellow,
              ),
            ],
          );
        },
      ),
    );
  }
}
