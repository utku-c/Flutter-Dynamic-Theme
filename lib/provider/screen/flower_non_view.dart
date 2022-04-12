// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:provider/provider.dart';

import 'package:flutter/material.dart';
import 'package:theme_data/model/custom_theme_data.dart';
import 'package:theme_data/model/item.dart';
import 'package:theme_data/screens/add_flower.dart';
import 'package:theme_data/shared/custom_theme.dart';

class FlowerNonView extends StatelessWidget {
  const FlowerNonView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
      ),
      appBar: AppBar(
        leading: Text(
          "Hello",
          style: Theme.of(context).textTheme.bodyText1,
        ),
        actions: [Icon(Icons.ac_unit)],
        title: Container(
          color: Colors.amber,
          child: Consumer<DarkFlowersModel>(
            child: Text(
              "Hello",
              style: TextStyle(color: Colors.amber),
            ),
            builder: (context, model, child) {
              return TextButton.icon(
                icon: Icon(Icons.ac_unit),
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => AddFlower(),
                    ),
                  );
                },
                label: Text(
                  model.totalFlower.toString(),
                ),
              );
            },
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FloatingActionButton(
              child: Text("Dark"),
              onPressed: () {
                Provider.of<CustomThemeDataModel>(context, listen: false)
                    .setThemeData(ThemeData.dark());
              },
            ),
            FloatingActionButton(
              child: Text("Light"),
              onPressed: () {
                Provider.of<CustomThemeDataModel>(context, listen: false)
                    .setThemeData(ThemeData.light());
              },
            ),
            FloatingActionButton(
              child: Text("Utku"),
              onPressed: () {
                Provider.of<CustomThemeDataModel>(context, listen: false)
                    .setThemeData(utkuThemeData);
              },
            ),
            FloatingActionButton(
              child: Text("Mor"),
              onPressed: () {
                Provider.of<CustomThemeDataModel>(context, listen: false)
                    .setThemeData(myTheme);
              },
            ),
            Expanded(
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return Text("data");
                },
                itemCount: Provider.of<DarkFlowersModel>(context, listen: true)
                    .list
                    .length,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
