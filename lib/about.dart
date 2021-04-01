import 'package:flutter/material.dart';

class Profil extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Profil'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: <Widget>[
          new IconButton(
              icon: new Icon(Icons.search, color: Colors.black),
              onPressed: null),
          new IconButton(
              icon: new Icon(Icons.edit, color: Colors.black), onPressed: null)
        ],
      ),
      body: Container(
          padding: EdgeInsets.all(20.0),
          child: Center(
              child: Column(
            children: <Widget>[
              CircleAvatar(
                  backgroundColor: Colors.grey,
                  radius: 70.0,
                  backgroundImage: AssetImage("images/fotoku.JPG")),
              Padding(padding: EdgeInsets.all(10.0)),
              Text('Kevin Rodrigo Semuel Ahab',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue)),
              Padding(padding: EdgeInsets.all(2.0)),
              Text('Kevin.rodrigo@undiksha.ac.id',
                  style: TextStyle(fontSize: 15, color: Colors.blue)),
              Padding(padding: EdgeInsets.all(20.0)),
              Container(
                  child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30),
                            topRight: Radius.circular(30))),
                    child: Column(
                      children: [
                        Padding(padding: EdgeInsets.all(1.0)),
                        Container(
                          height: 78,
                          width: 95,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(27),
                                  topRight: Radius.circular(27))),
                          child: Center(
                            child: Column(
                              children: <Widget>[
                                Icon(
                                  Icons.gps_fixed,
                                  color: Colors.green,
                                  size: 75,
                                )
                              ],
                            ),
                          ),
                        ),
                        Text('Singaraja',
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.yellow[600]))
                      ],
                    ),
                  ),
                  Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30),
                            topRight: Radius.circular(30))),
                    child: Column(
                      children: [
                        Padding(padding: EdgeInsets.all(1.0)),
                        Container(
                          height: 78,
                          width: 95,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(27),
                                  topRight: Radius.circular(27))),
                          child: Center(
                            child: Column(
                              children: <Widget>[
                                Icon(
                                  Icons.home,
                                  color: Colors.yellow[600],
                                  size: 75,
                                )
                              ],
                            ),
                          ),
                        ),
                        Text('Sambangan',
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.yellow[600]))
                      ],
                    ),
                  )
                ],
              )),
              Padding(padding: EdgeInsets.all(10.0)),
              Container(
                  child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30),
                            topRight: Radius.circular(30))),
                    child: Column(
                      children: [
                        Padding(padding: EdgeInsets.all(1.0)),
                        Container(
                          height: 78,
                          width: 95,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(27),
                                  topRight: Radius.circular(27))),
                          child: Center(
                            child: Column(
                              children: <Widget>[
                                Icon(
                                  Icons.music_note,
                                  color: Colors.purple,
                                  size: 75,
                                )
                              ],
                            ),
                          ),
                        ),
                        Text('Genre',
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.yellow[600]))
                      ],
                    ),
                  ),
                  Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30),
                            topRight: Radius.circular(30))),
                    child: Column(
                      children: [
                        Padding(padding: EdgeInsets.all(1.0)),
                        Container(
                          height: 78,
                          width: 95,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(27),
                                  topRight: Radius.circular(27))),
                          child: Center(
                            child: Column(
                              children: <Widget>[
                                Icon(
                                  Icons.location_city,
                                  color: Colors.blue,
                                  size: 75,
                                )
                              ],
                            ),
                          ),
                        ),
                        Text('Undiksha',
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.yellow[600]))
                      ],
                    ),
                  )
                ],
              )),
            ],
          ))),
    );
  }
}
