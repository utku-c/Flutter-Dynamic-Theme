// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:theme_data/model/item.dart';
import 'package:theme_data/provider/screen/flower_non_view.dart';
import 'package:theme_data/shared/custom_theme.dart';

import 'model/custom_theme_data.dart';

void main() => runApp(
      MultiProvider(
        providers: [
          ChangeNotifierProvider(
            create: (_) => DarkFlowersModel(),
          ),
          ChangeNotifierProvider(
            create: (_) => CustomThemeDataModel(),
          ),
        ],
        child: MyApp(),
      ),
    );

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      theme: Provider.of<CustomThemeDataModel>(context).getThemeData,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Material App Bar'),
        ),
        body: Center(
          child: FlowerNonView(),
        ),
      ),
    );
  }
}
