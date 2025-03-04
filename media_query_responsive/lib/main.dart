import 'package:flutter/material.dart';
import 'package:media_query_responsive/reponsive_orientation.dart';
import 'package:media_query_responsive/responsive_layout_builder_expanded.dart';
import 'package:media_query_responsive/responsive_layout_builder.dart';
import 'package:media_query_responsive/responsive_row_column.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const ResponsiveLayoutBuilderExpanded()
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    final largura = MediaQuery.of(context).size.width;
    final altura = MediaQuery.of(context).size.height;
    final alturaBarraStatus = MediaQuery.of(context).padding.top;
    final alturaAppBar = AppBar().preferredSize.height;
    final larguraItem = largura / 3;
    final alturaItem = altura - alturaBarraStatus - alturaAppBar;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(widget.title),
      ),
      body: Row(
        children: [
          Container(
            color: Colors.red,
            width: larguraItem,
            height: alturaItem,
          ),
          Container(
            color: Colors.black,
            width: larguraItem,
            height: alturaItem,
          ),
          Container(
            color: Colors.yellow,
            width: larguraItem,
            height: alturaItem,
          ),
        ],
      ),
    );
  }
}
