import 'package:flutter/material.dart';
import 'manage_screen.dart';
import 'scaffold_custom.dart';

class ManageCabinets extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // var loc = '\u{1F4CD}';
    // var map = '\u{1F5FA}';
    // var cab_icon = '\u{1F5C4}';
    // TODO: implement build
    return Scaffold(
      drawer: AppDrawer(),
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: <Color>[Colors.blue, Colors.teal[100]],
            ),
          ),
        ),
        title: Image.asset(
          'image/Logo.png',
          fit: BoxFit.contain,
          height: 45,
        ),
        actions: <Widget>[
          Container(
              padding: EdgeInsets.all(2.0),
              child: IconButton(
                onPressed: () {
                  print('search');
                },
                icon: Icon(Icons.search),
              ))
        ],
      ),
      body: Container(
        child: ListView(
          children: <Widget>[
            ListTile(
              title: Text('A01'),
              trailing: Icon(Icons.keyboard_arrow_right),
              onTap: () {
                print('Sun');
              },
            ),
            ListTile(
              title: Text('A02'),
              trailing: Icon(Icons.keyboard_arrow_right),
              onTap: () {
                print('Sun');
              },
            ),
            ListTile(
              title: Text('A03'),
              trailing: Icon(Icons.keyboard_arrow_right),
              onTap: () {
                print('Sun');
              },
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 75.0,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: <Color>[Colors.blue, Colors.teal[100]],
          ),
        ),
        child: Row(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.fromLTRB(20.0, 10.0, 16.0, 10.0),
              child: IconButton(
                icon: Icon(
                  Icons.home,
                  size: 30.0,
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ManageScreen()),
                  );
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(16.0, 10.0, 16.0, 10.0),
              child: IconButton(
                icon: Icon(
                  Icons.person_add,
                  size: 30.0,
                ),
                onPressed: () {},
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(7.0, 0.0, 18.0, 30.0),
              child: IconButton(
                icon: Icon(
                  // Icons.add_circle,
                  Icons.add_to_queue,
                  size: 59.0,
                  color: Colors.black,
                ),
                onPressed: () {},
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(25.0, 10.0, 16.0, 10.0),
              child: IconButton(
                icon: Icon(
                  Icons.dashboard,
                  size: 30.0,
                ),
                onPressed: () {},
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(16.0, 10.0, 20.0, 10.0),
              child: IconButton(
                icon: Icon(
                  Icons.settings,
                  size: 30.0,
                ),
                onPressed: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
