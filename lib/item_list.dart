import 'package:flutter/material.dart';

class ItemList extends StatelessWidget {
  final List<String> items;
  const ItemList({Key? key, required this.items}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const title = 'Long List';

    return MaterialApp(
      title: title,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(title),
        ),
        body: ListView.builder(
          key: const Key('long_list'),
          itemCount: items.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(
                items[index],
                key: Key('item_${index}_text'),
              ),
            );
          },
        ),
      ),
    );
  }
}
