import 'package:flutter/material.dart';
import 'package:learn_flutter/manage_screen.dart';
import 'scaffold_custom.dart';

class AccountDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var name = 'Pham Minh Duy';
    var age = '22';
    var numb = '0909290997';
    var cab = '2';
    var bd = '29/09/1997';
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
      body: Center(
        child: Container(
          height: 700.0,
          width: 360.0,
          color: Colors.white,
          child: ListView(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(20.0),
                child: Text(
                  'Name: $name',
                  style: TextStyle(fontSize: 18.0),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(20.0),
                child: Text(
                  'Age: $age',
                  style: TextStyle(fontSize: 18.0),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(18.0),
                child: Text(
                  'Date of birth: $bd',
                  style: TextStyle(fontSize: 18.0),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(18.0),
                child: Text(
                  'Phone number: $numb',
                  style: TextStyle(fontSize: 18.0),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(18.0),
                child: Text(
                  'Owner Cabinet: $cab',
                  style: TextStyle(fontSize: 18.0),
                ),
              ),
            ],
          ),
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
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ManageScreen()),
                  );
                },
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
