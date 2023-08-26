import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provintro/fav_provider/fav_provider.dart';

import 'favrt_screen.dart';

class HomeListScreen extends StatefulWidget {
  const HomeListScreen({super.key});

  @override
  State<HomeListScreen> createState() => _HomeScreenListState();
}

class _HomeScreenListState extends State<HomeListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const FavList()),
                );
              },
              icon: const Icon(Icons.category_rounded))
        ],
        title: Text(
          Provider.of<FavProvider>(context).Listlength.toString(),
          style: const TextStyle(fontSize: 25, color: Colors.red),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
          child: Column(
        children: [
          Consumer<FavProvider>(builder: (context, value, child) {
            return Expanded(
              child: ListView.builder(
                  itemCount: 15,
                  itemBuilder: (context, index) {
                    return ListTile(
                      onTap: () {
                        if (value.tappedlist.contains(index)) {
                          value.removeTappedList(index);
                        } else {
                          value.addTappedList(index);
                        }
                      },
                      leading: Text(index.toString()),
                      title: Text("Movie ${index.toString()}"),
                      trailing: Icon(
                        Icons.favorite,
                        color: value.tappedlist.contains(index)
                            ? Colors.red
                            : Colors.grey,
                      ),
                    );
                  }),
            );
          })
        ],
      )),
    );
  }
}
