import 'package:flutter/material.dart';
import 'package:learn_flutter/background_color.dart';
import 'package:toast/toast.dart';
// import 'package:learn_flutter/background_signup.dart';

// import 'package:flutter_login/flutter_login.dart';
// import 'package:flutter/scheduler.dart' show timeDilation;
// import 'users.dart';
// import 'custom_route.dart';
// import 'manage_cabinet.dart';

class SignupScreen extends StatefulWidget {
  @override
  _SignupScreen createState() => _SignupScreen();
}

class _SignupScreen extends State<SignupScreen> {
  // get myGradient => null;
  GlobalKey<FormState> _key = new GlobalKey();
  // bool _validate = false;
  String email, password, confirm;

  @override
  Widget build(BuildContext context) {
    return Column(key: _key, children: <Widget>[
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
            height: 350.0,
            width: 320.0,
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Text(
                    'SIGN UP',
                    style: TextStyle(
                      fontSize: 30.0,
                    ),
                  ),
                ),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Email',
                    hintText: 'Email: end with @gmail.com,...',
                    border: InputBorder.none,
                    filled: true,
                  ),
                  // maxLength: 32,
                  onSaved: (String input) {
                    email = input;
                  },
                ),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Password',
                    border: InputBorder.none,
                    filled: true,
                  ),
                  onSaved: (String input) {
                    password = input;
                  },
                  obscureText: true,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Confirm Password',
                    border: InputBorder.none,
                    filled: true,
                  ),
                  onSaved: (String input) {
                    confirm = input;
                  },
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
                            colors: <Color>[Colors.red, Colors.white],
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
                          'Sign Up',
                          style: TextStyle(fontSize: 22.0),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                    onPressed: () {
                      var seeding = '\u{1F4AF}';
                      Toast.show("Create Successfully! $seeding ", context,
                          backgroundColor: Colors.green[400],
                          duration: Toast.LENGTH_LONG,
                          gravity: Toast.CENTER);
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
        padding: EdgeInsets.only(top: 152.0),
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
                      "Have an account?",
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
                        borderRadius: new BorderRadius.circular(40.0),
                        side: BorderSide(color: Colors.white)),
                    child: const Text(
                      'Login',
                      style: TextStyle(fontSize: 18.0),
                    ),
                    color: Colors.lightBlue[600],
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => BackgroundColor()),
                      );
                    },
                  ),
                ]),
          ),
        ),
      )
    ]);
  }

  // String validateEmail(String value) {
  //   String patttern =
  //       r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
  //   RegExp regExp = new RegExp(patttern);
  //   if (value.length == 0) {
  //     return "Email is Required";
  //   } else if (!regExp.hasMatch(value)) {
  //     return "Email must be have @";
  //   }
  //   return null;
  // }

  // _sendToServer() {
  //   if (_key.currentState.validate()) {
  //     // No any error in validation
  //     _key.currentState.save();
  //     print("Email $email");
  //     print("Password $password");
  //     print("Confirm Password $confirm");
  //   } else {
  //     // validation error
  //     setState(() {
  //       _validate = true;
  //     });
  //   }
  // }
}
