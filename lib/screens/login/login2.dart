import 'package:flutter/material.dart';
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
  Widget build(BuildContext context) => Scaffold(
        body: Stack(
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
            Positioned(
              top: MediaQuery.of(context).size.height *
                  .3, // MediaQuery.of(context).size.height * .18,
              left: MediaQuery.of(context).size.width *
                  .1, // MediaQuery.of(context).size.width * .34,
              child: Container(
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
                height: 200.0,
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
            ),
          ],
        ),
      );

  // List<Widget> loginForm() {
  //   return [
  //     padded(
  //       child: TextFormField(
  //         style: TextStyle(
  //           color: Colors.deepOrange,
  //         ),
  //         decoration: InputDecoration(
  //           // floatingLabelBehavior: FloatingLabelBehavior.auto,
  //           labelText: 'Email',
  //           labelStyle: TextStyle(
  //             color: Colors.deepOrange,
  //           ),
  //           focusedErrorBorder: OutlineInputBorder(
  //             borderRadius: BorderRadius.circular(
  //               10.0,
  //             ),
  //           ),
  //           focusedBorder: OutlineInputBorder(
  //             borderRadius: BorderRadius.circular(
  //               10.0,
  //             ),
  //           ),
  //           border: OutlineInputBorder(
  //             borderRadius: BorderRadius.circular(
  //               10.0,
  //             ),
  //           ),
  //         ),
  //         autocorrect: false,
  //         validator: (val) => val.isEmpty ? 'Email can\'t be empty.' : null,
  //         onSaved: (val) => {},
  //       ),
  //     ),
  //     padded(
  //       child: TextFormField(
  //         style: TextStyle(
  //           color: Colors.deepOrange,
  //         ),
  //         decoration: InputDecoration(
  //           // floatingLabelBehavior: FloatingLabelBehavior.auto,
  //           labelText: 'Password',
  //           labelStyle: TextStyle(
  //             color: Colors.deepOrange,
  //           ),
  //           focusedErrorBorder: OutlineInputBorder(
  //             borderRadius: BorderRadius.circular(
  //               10.0,
  //             ),
  //           ),
  //           focusedBorder: OutlineInputBorder(
  //             borderRadius: BorderRadius.circular(
  //               10.0,
  //             ),
  //           ),
  //           border: OutlineInputBorder(
  //             borderRadius: BorderRadius.circular(
  //               10.0,
  //             ),
  //           ),
  //         ),
  //         obscureText: true,
  //         autocorrect: false,
  //         validator: (val) => val.isEmpty ? 'Password can\'t be empty.' : null,
  //         onSaved: (val) => {},
  //       ),
  //     ),
  //     MaterialButton(
  //       onPressed: () =>
  //         print('clicked')
  //         // Navigator.pushNamed(
  //         //   context,
  //         //   Routes.home,
  //         // );
  //       ,
  //       color: Colors.deepOrange,
  //       textColor: Colors.white,
  //       hoverColor: Colors.deepOrangeAccent,
  //       splashColor: Colors.deepOrange[50],
  //       child: Text('LOGIN'),
  //       shape: RoundedRectangleBorder(
  //         borderRadius: BorderRadius.all(
  //           Radius.circular(
  //             50.0,
  //           ),
  //         ),
  //       ),
  //     ),
  //     MaterialButton(
  //       onPressed: () => {},
  //       color: Colors.deepOrange,
  //       textColor: Colors.white,
  //       hoverColor: Colors.deepOrangeAccent,
  //       splashColor: Colors.deepOrange[50],
  //       child: Text('SIGNUP'),
  //       shape: RoundedRectangleBorder(
  //         borderRadius: BorderRadius.all(
  //           Radius.circular(
  //             50.0,
  //           ),
  //         ),
  //       ),
  //     ),
  //   ];
  // }

  // Widget padded({Widget child}) {
  //   return Padding(
  //     padding: EdgeInsets.symmetric(
  //       vertical: 8.0,
  //     ),
  //     child: child,
  //   );
  // }
}
