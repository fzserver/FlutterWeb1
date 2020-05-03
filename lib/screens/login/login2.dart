import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutterweb/routes/routes.dart';
import 'package:flutterweb/screens/home/home.dart';
import 'package:flutterweb/widgets/waves/config.dart';
import 'package:flutterweb/widgets/waves/waves.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Stack(
            overflow: Overflow.visible,
            children: <Widget>[
              Container(
                height: MediaQuery.of(context).size.height * 0.28,
                width: MediaQuery.of(context).size.width,
                child: WaveWidget(
                  config: CustomConfig(
                    colors: [
                      Colors.white70,
                      Colors.white54,
                      Colors.white30,
                      Colors.white24,
                    ],
                    durations: [
                      5000,
                      3200,
                      2100,
                      1800,
                    ],
                    heightPercentages: [
                      0.75,
                      0.56,
                      0.58,
                      0.31,
                    ],
                  ),
                  backgroundColor: Colors.deepOrange,
                  size: Size(
                    MediaQuery.of(context).size.width,
                    300.0,
                  ),
                ),
              ),
              Positioned(
                top: MediaQuery.of(context).size.height * .18,
                left: MediaQuery.of(context).size.width * .035,
                child: Text(
                  "Sign In",
                  style: TextStyle(
                    fontSize: 40,
                    letterSpacing: 1.0,
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ),
            ],
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(
                  10.0,
                ),
              ),
              gradient: LinearGradient(
                begin: Alignment.centerRight,
                end: Alignment.centerLeft,
                colors: [
                  Colors.pink,
                  Colors.white,
                ],
                stops: [
                  1.0,
                  0.0,
                ],
              ),
            ),
            height: MediaQuery.of(context).size.width * 0.50,
            width: MediaQuery.of(context).size.width * .8,
            padding: const EdgeInsets.all(16.0),

            child: Column(
              mainAxisSize: MainAxisSize.min,
// crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                MaterialButton(
                  onPressed: () =>
                      Navigator.of(context).pushNamed(Routes.home),
                  color: Colors.deepOrange,
                  textColor: Colors.white,
                  child: Text('Home'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}


