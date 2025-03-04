import 'package:flutter/material.dart';

class ResponsiveLayoutBuilder extends StatefulWidget {
  const ResponsiveLayoutBuilder({super.key});

  @override
  State<ResponsiveLayoutBuilder> createState() =>
      _ResponsiveLayoutBuilderState();
}

class _ResponsiveLayoutBuilderState extends State<ResponsiveLayoutBuilder> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        title: const Text('Layout Builder'),
      ),
      body: Container(
        color: Colors.amber,
        width: MediaQuery.of(context).size.width,
        child: LayoutBuilder(
          builder: (context, constraints) {
            var largura = constraints.maxWidth;
            var larguraMin = constraints.minWidth;
        
            print('lagura min: $larguraMin, larguraMax $largura');
        
            if(largura < 600) {
              return const Text('Celulares');
            } else if(largura < 960) {
              return const Text('Celulares and tablets');
            } else {
              return const Text('Large size window');
            }
          },
        ),
      ),
    );
  }
}
