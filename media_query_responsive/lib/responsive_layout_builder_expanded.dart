import 'package:flutter/material.dart';

class ResponsiveLayoutBuilderExpanded extends StatefulWidget {
  const ResponsiveLayoutBuilderExpanded({super.key});

  @override
  State<ResponsiveLayoutBuilderExpanded> createState() =>
      _ResponsiveLayoutBuilderExpandedState();
}

class _ResponsiveLayoutBuilderExpandedState
    extends State<ResponsiveLayoutBuilderExpanded> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Layout Builder Expanded'),
      ),
      body: Row(
        children: [
          Flexible(
            child: LayoutBuilder(
              builder: (context, constraints) {
                print(
                    'minWidth: ${constraints.minWidth}, maxWidth: ${constraints.maxWidth}');
                return Container(
                  color: Colors.blue,
                  child: const Center(child: Text('Flexible 1')),
                );
              },
            ),
          ),
          Flexible(
            child: LayoutBuilder(
              builder: (context, constraints) {
                print(
                    'minWidth: ${constraints.minWidth}, maxWidth: ${constraints.maxWidth}');
                return Container(
                  color: Colors.green,
                  child: const Center(child: Text('Flexible 2')),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}