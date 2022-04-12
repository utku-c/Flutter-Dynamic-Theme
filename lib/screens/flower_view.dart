// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:theme_data/model/item.dart';
import 'package:theme_data/screens/add_flower.dart';

class FlowerView extends StatefulWidget {
  FlowerView({Key? key}) : super(key: key);

  @override
  State<FlowerView> createState() => _FlowerViewState();
}

class _FlowerViewState extends State<FlowerView> {
  var model = FlowersModel();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            // flowerNotify.addFlower(Flower("blue", "gül"));
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => AddFlower(),
              ),
            );
          },
        ),
        body: ValueListenableBuilder(
          valueListenable: flowerNotify,
          child: Text("Değişiklikten etkilenmez"),
          builder: (context, FlowersModel model, child) {
            return ListView.builder(
              itemCount: model.list.length,
              itemBuilder: (context, index) =>
                  Card(child: Text(model.list[index].color)),
            );
          },
        ));
  }
}
