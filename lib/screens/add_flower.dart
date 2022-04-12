// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:theme_data/model/item.dart';
import 'package:provider/provider.dart';

class AddFlower extends StatefulWidget {
  AddFlower({Key? key}) : super(key: key);

  @override
  State<AddFlower> createState() => _AddFlowerState();
}

class _AddFlowerState extends State<AddFlower> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add Flower"),
      ),
      body: Center(
        child: GestureDetector(
          onTap: () {
            // flowerNotify.addFlower(Flower("dart", "Gül"));
            Provider.of<DarkFlowersModel>(context, listen: false)
                .addFlower(Flower("dart", "Gül"));
          },
          child: Text("Add Flower"),
        ),
      ),
    );
  }
}
