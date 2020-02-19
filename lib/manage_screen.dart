import 'package:flutter/material.dart';
import 'package:learn_flutter/login_form.dart';
import 'scaffold_custom.dart';
import 'manage_cab_screen.dart';

class ManageScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var loc = '\u{1F4CD}';
    var map = '\u{1F5FA}';
    var cab_icon = '\u{1F5C4}';
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

        // backgroundColorStart: Colors.lightBlue[600],
        // backgroundColorEnd: Colors.tealAccent,
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
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.fromLTRB(0, 18.0, 0.0, 10.0),
              child: Text(
                'Location',
                style: TextStyle(fontSize: 45.0),
              ),
            ),
            Container(
              height: 600.0,
              width: 320.0,
              child: ListView(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.fromLTRB(10.0, 0.0, 0, 10.0),
                    child: Container(
                      height: 100.0,
                      width: 310.0,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.blueAccent),
                        borderRadius: BorderRadius.circular(9.0),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.blue.withOpacity(0.2),
                            spreadRadius: 4,
                            blurRadius: 5,
                          )
                        ],
                        color: Colors.white,
                      ),
                      child: ListTile(
                        // leading: ,
                        title: Text(
                          '$cab_icon A4 Automactic Cabinet  \n$loc 268 Ly Thuong Kiet, District 10 \n$map Ho Chi Minh City, Viet Nam',
                          style: TextStyle(fontSize: 18.0),
                        ),
                        onTap: () {},
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(10.0, 10.0, 0, 10.0),
                    child: Container(
                      height: 100.0,
                      width: 310.0,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.blueAccent),
                        borderRadius: BorderRadius.circular(9.0),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.blue.withOpacity(0.2),
                            spreadRadius: 4,
                            blurRadius: 5,
                          )
                        ],
                        color: Colors.white,
                      ),
                      child: ListTile(
                        // leading: ,
                        title: Text(
                          '$cab_icon A5 Automactic Cabinet  \n$loc 268 Ly Thuong Kiet, District 10 \n$map Ho Chi Minh City, Viet Nam',
                          style: TextStyle(fontSize: 18.0),
                        ),
                        onTap: () {},
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(10.0, 10.0, 0, 10.0),
                    child: Container(
                      height: 100.0,
                      width: 310.0,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.blueAccent),
                        borderRadius: BorderRadius.circular(9.0),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.blue.withOpacity(0.2),
                            spreadRadius: 4,
                            blurRadius: 5,
                          )
                        ],
                        color: Colors.white,
                      ),
                      child: ListTile(
                        // leading: ,
                        title: Text(
                          '$cab_icon B4 Automactic Cabinet  \n$loc 268 Ly Thuong Kiet, District 10 \n$map Ho Chi Minh City, Viet Nam',
                          style: TextStyle(fontSize: 18.0),
                        ),
                        onTap: () {},
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(10.0, 10.0, 0, 10.0),
                    child: Container(
                      height: 100.0,
                      width: 310.0,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.blueAccent),
                        borderRadius: BorderRadius.circular(9.0),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.blue.withOpacity(0.2),
                            spreadRadius: 4,
                            blurRadius: 5,
                          )
                        ],
                        color: Colors.white,
                      ),
                      child: ListTile(
                        // leading: ,
                        title: Text(
                          '$cab_icon C5 Automactic Cabinet  \n$loc 268 Ly Thuong Kiet, District 10 \n$map Ho Chi Minh City, Viet Nam',
                          style: TextStyle(fontSize: 18.0),
                        ),
                        onTap: () {},
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(10.0, 10.0, 0, 10.0),
                    child: Container(
                      height: 100.0,
                      width: 310.0,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.blueAccent),
                        borderRadius: BorderRadius.circular(9.0),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.blue.withOpacity(0.2),
                            spreadRadius: 4,
                            blurRadius: 5,
                          )
                        ],
                        color: Colors.white,
                      ),
                      child: ListTile(
                        // leading: ,
                        title: Text(
                          '$cab_icon Mr.Bon Automactic Cabinet  \n$loc Di An Town \n$map Binh Duong Province, Viet Nam',
                          style: TextStyle(fontSize: 18.0),
                        ),
                        onTap: () {},
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(10.0, 10.0, 0, 10.0),
                    child: Container(
                      height: 100.0,
                      width: 310.0,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.blueAccent),
                        borderRadius: BorderRadius.circular(9.0),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.blue.withOpacity(0.2),
                            spreadRadius: 4,
                            blurRadius: 5,
                          )
                        ],
                        color: Colors.white,
                      ),
                      child: ListTile(
                        // leading: ,
                        title: Text(
                          '$cab_icon Dorm Automactic Cabinet  \n$loc 497 Hoa Hao, District 10 \n$map Ho Chi Minh City, Viet Nam',
                          style: TextStyle(fontSize: 18.0),
                        ),
                        onTap: () {},
                      ),
                    ),
                  ),
                ],
              ),
              // color: Colors.red,
            )
          ],
        ),
        // Container(
        //   height: 600.0,
        //   width: 320.0,
        //   color: Colors.red,
        // ),
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
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ManageCabinets()),
                  );
                },
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
