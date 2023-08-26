import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provintro/fav_provider/fav_provider.dart';

class FavList extends StatefulWidget {
  const FavList({super.key});

  @override
  State<FavList> createState() => _FavListState();
}

class _FavListState extends State<FavList> {
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<FavProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Favorite List'),
      ),
      body: SafeArea(
          child: ListView.builder(
              itemCount: provider.tappedlist.length,
              itemBuilder: (contex, index) {
                return ListTile(
                  leading: Text(provider.tappedlist[index].toString()),
                  title: Text('Movie ${provider.tappedlist[index]}'),
                  trailing: const Icon(
                    Icons.favorite,
                    color: Colors.red,
                  ),
                );
              })),
    );
  }
}
