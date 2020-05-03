import 'package:flutter/material.dart';
import 'package:flutterweb/providers/dark.dart';
import 'package:flutterweb/screens/config/configPage.dart';
import 'package:flutterweb/widgets/university.dart';
import 'package:provider/provider.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    // final themeChange = Provider.of<DarkThemeProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Pamoja Web'),
        centerTitle: true,
        actions: <Widget>[
          // Switch(
          //   value: themeChange.darkTheme,
          //   onChanged: (bool value) {
          //     print('Dark = ${value.toString()}');
          //     themeChange.updateTheme(value);
          //     runApp(ConfigApp());
          //   },
          // ),
        ],
      ),
      body: showUniversities(context: context),
    );
  }
}
