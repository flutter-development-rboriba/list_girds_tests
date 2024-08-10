import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    const String appTitle = 'Flutter layout demo';

    return MaterialApp(
      title: appTitle,
      home: Scaffold(
          appBar: AppBar(
            title: const Text(appTitle),
          ),
          // #docregion add-widget
          body: GridView.count(
            // Create a grid with 2 columns. If you change the scrollDirection
            // to horizontal, this produces 2 rows.
            crossAxisCount: 3,
            // Generate 100 widgets that display their index in the List.
            children: List.generate(50, (index) {
              return Center(
                child: Text(
                  'Item ${index}',
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
              );
            }),
          )),
    );
  }
}
