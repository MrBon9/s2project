import 'package:flutter/material.dart';
// import 'package:learn_flutter/background_color.dart';
import 'package:learn_flutter/background_signup.dart';
import 'package:learn_flutter/manage_screen.dart';

// import 'package:flutter_login/flutter_login.dart';
// import 'package:flutter/scheduler.dart' show timeDilation;
// import 'users.dart';
// import 'custom_route.dart';
// import 'manage_cabinet.dart';

class LoginScreen extends StatelessWidget {
  get myGradient => null;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(children: <Widget>[
      Padding(
        child: Image.asset(
          'image/Logo.png',
        ),
        padding: EdgeInsets.only(top: 90.0),
      ),
      Padding(
        padding: EdgeInsets.only(top: 70.0),
        child: Center(
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(9.0),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(.2),
                  spreadRadius: 10,
                  blurRadius: 5,
                )
              ],
              color: Colors.white,
            ),
            height: 290.0,
            width: 320.0,
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Text(
                    'LOGIN FORM',
                    style: TextStyle(
                      fontSize: 30.0,
                    ),
                  ),
                ),
                TextField(
                  decoration: InputDecoration(
                    labelText: 'Username',
                    border: InputBorder.none,
                    filled: true,
                  ),
                ),
                TextField(
                  decoration: InputDecoration(
                    labelText: 'Password',
                    border: InputBorder.none,
                    filled: true,
                  ),
                  obscureText: true,
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(60, 20, 60, 20),
                  child: RaisedButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50.0)),
                    padding: const EdgeInsets.all(0.0),
                    child: Ink(
                      decoration: const BoxDecoration(
                        gradient: LinearGradient(
                            colors: <Color>[Colors.blue, Colors.white],
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter),
                        borderRadius: BorderRadius.all(Radius.circular(80.0)),
                      ),
                      child: Container(
                        constraints: const BoxConstraints(
                            minWidth: 90.0,
                            minHeight: 54.0), // min sizes for Material buttons
                        alignment: Alignment.center,
                        child: const Text(
                          'Login',
                          style: TextStyle(fontSize: 22.0),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ManageScreen()),
                      );
                    },
                  ),
                  // child: RaisedButton(
                  //   padding: EdgeInsets.all(12),
                  //   shape: RoundedRectangleBorder(
                  //     borderRadius: BorderRadius.circular(45),
                  //   ),
                  //   child: Text(
                  //     '            Login            ',
                  //     style: TextStyle(fontSize: 25.0),
                  //   ),
                  //   color: Colors.lightBlueAccent,
                  //   onPressed: () {},
                  // ),
                ),
              ],
            ),
          ),
        ),
      ),
      Padding(
        padding: EdgeInsets.only(top: 212.0),
        child: Container(
          decoration: BoxDecoration(
            gradient: new LinearGradient(
              colors: [Colors.blue, Colors.teal[100]],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          // color: Colors.red,
          height: 70.0,
          child: Center(
            child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(right: 5.0),
                    child: Text(
                      "Don't have an account?",
                      style: TextStyle(fontSize: 20.0, color: Colors.white),
                    ),
                  ),
                  RaisedButton(
                    padding: const EdgeInsets.all(12.0),

                    // child: Text(
                    //   'Sign up',
                    //   style: TextStyle(fontSize: 16),
                    // ),
                    shape: RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(30.0),
                        side: BorderSide(color: Colors.white)),
                    child: const Text(
                      'Sign up',
                      style: TextStyle(fontSize: 18.0),
                    ),
                    color: Colors.red[400],
                    // child: Ink(
                    //   decoration: const BoxDecoration(
                    //     gradient: LinearGradient(
                    //         colors: <Color>[Colors.blue, Colors.white],
                    //         begin: Alignment.topCenter,
                    //         end: Alignment.bottomCenter),
                    //     borderRadius: BorderRadius.all(Radius.circular(80.0)),
                    //   ),
                    // ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => BackgroundColorSignUp()),
                      );
                    },
                  ),
                ]),
          ),
        ),
      )
    ]);
  }
}
