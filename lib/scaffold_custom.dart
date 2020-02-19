import 'package:flutter/material.dart';
import 'account_details_screen.dart';
import 'manage_cab_screen.dart';
import 'login_form.dart';

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.grey[300],
        child: Column(
          children: <Widget>[
            Container(
              height: 136.0,
              color: Colors.blue[400],
              child: Row(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.fromLTRB(29, 40, 9, 9),
                    child: Container(
                      height: 72.0,
                      width: 72.0,
                      // color: Colors.red,
                      // child: ClipOval(
                      //   child: Align(
                      //     heightFactor: 0.7,
                      //     widthFactor: 0.7,
                      //     child: Image.asset('image/ava.png'),
                      //   ),
                      // ),
                      child: CircleAvatar(
                        radius: 36.0,
                        backgroundImage: AssetImage("image/ngan.jpg"),
                        // child: Image.asset('image/ava.png'),
                        // child: ClipOval(

                        // ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(9, 45, 10, 9),
                    child: Center(
                        child: Text(
                      'Mr.Bon',
                      style: TextStyle(fontSize: 27, color: Colors.white),
                    )),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(0, 5.0, 0, 2.0),
              child: Container(
                height: 336,
                color: Colors.white,
                child: Column(
                  children: <Widget>[
                    ListTile(
                      leading: Icon(Icons.account_box),
                      title: Text('Account Details'),
                      trailing: Icon(Icons.keyboard_arrow_right),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => AccountDetails()),
                        );
                        print('Account');
                      },
                    ),
                    ListTile(
                      leading: Icon(Icons.dashboard),
                      title: Text('Your Boxes'),
                      trailing: Icon(Icons.keyboard_arrow_right),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ManageCabinets()),
                        );
                        print('Manage Boxes');
                      },
                    ),
                    ListTile(
                      leading: Icon(Icons.announcement),
                      title: Text('Notifications'),
                      trailing: Icon(Icons.keyboard_arrow_right),
                      onTap: () {
                        print('Notificate');
                      },
                    ),
                    ListTile(
                      leading: Icon(Icons.people),
                      title: Text('Friends'),
                      trailing: Icon(Icons.keyboard_arrow_right),
                      onTap: () {
                        print('Friend List');
                      },
                    ),
                    ListTile(
                      leading: Icon(Icons.screen_share),
                      title: Text('Authorize Your Boxes'),
                      trailing: Icon(Icons.keyboard_arrow_right),
                      onTap: () {
                        print('Authorize');
                      },
                    ),
                    ListTile(
                      leading: Icon(Icons.show_chart),
                      title: Text('Statistical'),
                      trailing: Icon(Icons.keyboard_arrow_right),
                      onTap: () {
                        print('Statistical');
                      },
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(0, 2.5, 0, 2.5),
              child: Container(
                height: 150.0,
                color: Colors.white,
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.fromLTRB(0.0, 9.0, 72.0, 0.0),
                      child: Text(
                        'SUPPORT',
                        style: TextStyle(fontSize: 20.0),
                      ),
                    ),
                    ListTile(
                      leading: Icon(Icons.phone),
                      title: Text('Hotline: 1900290997'),
                      // onTap: () {},
                    ),
                    ListTile(
                      leading: Icon(Icons.mail),
                      title: Text('Email: teamKHMT15@gmail.com'),
                      // onTap: () {},
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(0, 2.5, 0, 130.0),
              child: Container(
                height: 60.0,
                color: Colors.white,
                child: ListTile(
                  title: Text('             ABOUT US',
                      style: TextStyle(fontSize: 20.0)),
                  onTap: () {
                    print('Link to web');
                  },
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(0, 15, 0, 0.0),
              child: Container(
                height: 54.0,
                color: Colors.white,
                child: ListTile(
                  leading: Icon(Icons.exit_to_app),
                  title: Text('Logout'),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LoginScreen()),
                    );
                    print('Logout');
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// class AppBarBuild extends StatefulWidget{
//   @override
//   _AppBarBuild createState() => _AppBarBuild();
//   }

//   class _AppBarBuild extends State<AppBarBuild> {
//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     return AppBar(

//     );
//   }
// }
