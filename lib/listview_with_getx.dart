import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x/listview_controller.dart';

class ListViewWithGetX extends StatefulWidget {
  const ListViewWithGetX({super.key});

  @override
  State<ListViewWithGetX> createState() => _ListViewWithGetXState();
}

class _ListViewWithGetXState extends State<ListViewWithGetX> {
  /*
   
  */

  ListViewController listViewController = Get.put(ListViewController());

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    print('Rebuild');
    return Scaffold(
      appBar: AppBar(
        title: const Text('ListView With GetX'),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: listViewController.fruitList.length,
        itemBuilder: (context, index) {
          return Card(
            elevation: 10,
            child: ListTile(
              onTap: () {
                if (listViewController.tempFruitList
                    .contains(listViewController.fruitList[index].toString())) {
                  listViewController.removeFromFavorite(
                      listViewController.fruitList[index].toString());
                } else {
                  listViewController.addToFavorite(
                      listViewController.fruitList[index].toString());
                }
              },
              title: Text(listViewController.fruitList[index].toString()),
              trailing: Obx(() {
                return Icon(
                  Icons.favorite,
                  color: listViewController.tempFruitList.contains(
                          listViewController.fruitList[index].toString())
                      ? Colors.red
                      : Colors.white70,
                );
              }),
            ),
          );
        },
      ),
    );
  }
}
