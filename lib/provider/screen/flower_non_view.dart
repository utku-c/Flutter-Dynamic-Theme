// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:provider/provider.dart';

import 'package:flutter/material.dart';
import 'package:theme_data/model/custom_theme_data.dart';
import 'package:theme_data/shared/custom_theme.dart';

class FlowerNonView extends StatelessWidget {
  const FlowerNonView({Key? key}) : super(key: key);
  //Theme.of(context).textTheme.bodyText1
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          GestureDetector(
            child: Icon(
              Icons.ac_unit,
              size: 40,
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              child: Column(
                children: [
                  Card(
                    elevation: 8,
                    color: Theme.of(context).backgroundColor,
                    child: Container(
                      height: 100,
                      width: 100,
                      child: Center(child: Text("CARD")),
                    ),
                  ),
                  Chip(
                    avatar: Icon(Icons.ac_unit_outlined),
                    elevation: 8,
                    backgroundColor: Theme.of(context).backgroundColor,
                    label: Text("Bu bir Chip"),
                  ),
                  Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      color: Theme.of(context).backgroundColor,
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(
                        width: 3,
                        color: Theme.of(context).toggleableActiveColor,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            newMethodFloatinButoon(context),
          ],
        ),
      ),
    );
  }

  Row newMethodFloatinButoon(BuildContext context) {
    return Row(
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
        // Expanded(
        //   child: ListView.builder(
        //     itemBuilder: (context, index) {
        //       return Text("data");
        //     },
        //     itemCount: Provider.of<DarkFlowersModel>(context, listen: true)
        //         .list
        //         .length,
        //   ),
        // ),
      ],
    );
  }
}
