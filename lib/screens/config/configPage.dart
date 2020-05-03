import 'package:flutter/material.dart';
import 'package:flutterweb/providers/dark.dart';
import 'package:flutterweb/providers/provider.dart';
import 'package:flutterweb/routes/routes.dart';
import 'package:flutterweb/styles/styles.dart';
import 'package:provider/provider.dart';

class ConfigApp extends StatefulWidget {
  @override
  _ConfigAppState createState() => _ConfigAppState();
}

class _ConfigAppState extends State<ConfigApp> {
  DarkThemeProvider themeChangeProvider = DarkThemeProvider();

  @override
  void initState() {
    // getCurrentAppTheme();
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  void getCurrentAppTheme() async {
    print('Dark Theme = ${themeChangeProvider.darkTheme}');
    themeChangeProvider
        .updateTheme(await themeChangeProvider.darkThemePreference.getTheme());
  }

  @override
  Widget build(BuildContext context) => MultiProvider(
        providers: Providers.providers(),
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          // theme: Styles.themeData(themeChangeProvider.darkTheme, context),
          title: 'Pamoja Web',
          initialRoute: Routes.initial,
          routes: Routes.routes(),
        ),
      );
}
