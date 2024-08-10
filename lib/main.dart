import 'package:flutter/material.dart';

void main() {
  runApp(
    MyApp(
      items: List<String>.generate(10000, (i) => 'Item $i'),
    ),
  );
}

class MyApp extends StatelessWidget {
  final List<String> items;

  const MyApp({super.key, required this.items});

  @override
  Widget build(BuildContext context) {
    const String appTitle = 'Long List Example';

    return MaterialApp(
      title: appTitle,
      home: Scaffold(
          appBar: AppBar(
            title: const Text(appTitle),
          ),
          body: ListView.builder(
            itemCount: items.length,
            prototypeItem: ListTile(title: Text(items.first)),
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(items[index]),
              );
            },
          )),
    );
  }
}
