import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provintro/provider/favourite_provider.dart';

import 'favourite_list.dart';

class ListTileScreeen extends StatefulWidget {
  const ListTileScreeen({super.key});

  @override
  State<ListTileScreeen> createState() => _ListTileScreeenState();
}

class _ListTileScreeenState extends State<ListTileScreeen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Favourite App'),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const FavouriteListScreen()),
                );
              },
              icon: const Icon(Icons.favorite))
        ],
      ),
      body: SafeArea(
        child: ListView.builder(
            itemCount: 100,
            itemBuilder: (contex, index) {
              return Consumer<FavourateProvder>(
                  builder: (context, value, child) {
                return ListTile(
                  onTap: () {
                    if (value.indexListItem.contains(index)) {
                      value.removeValueFromList(index);
                    } else {
                      value.addValueToList(index);
                    }
                  },
                  leading: Text(
                    index.toString(),
                  ),
                  title: Text('item $index'),
                  trailing: Icon(value.indexListItem.contains(index)
                      ? Icons.favorite
                      : Icons.favorite_border_outlined),
                );
              });
            }),
      ),
    );
  }
}
