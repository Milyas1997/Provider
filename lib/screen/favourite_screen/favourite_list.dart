import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provintro/provider/favourite_provider.dart';

class FavouriteListScreen extends StatefulWidget {
  const FavouriteListScreen({super.key});

  @override
  State<FavouriteListScreen> createState() => _FavouriteListScreenState();
}

class _FavouriteListScreenState extends State<FavouriteListScreen> {
  @override
  Widget build(BuildContext context) {
    final favProvider = Provider.of<FavourateProvder>(context);

    return Scaffold(
      body: SafeArea(
        child: ListView.builder(
            itemCount: favProvider.indexListItem.length,
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
