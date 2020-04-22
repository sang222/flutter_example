import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            backgroundColor: Colors.teal,
            body: SafeArea(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                        CircleAvatar(
                            radius: 50.0,
                            backgroundColor: Colors.red,
                            backgroundImage: AssetImage('images/girl.jpg'),
                        ),
                        Text(
                            'Quang Sang',
                            style: TextStyle(
                                fontSize: 40.0,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Pacifico'
                            )
                        ),
                        Text(
                            'Flutter Developper',
                            style: TextStyle(
                                fontSize: 20.0,
                                color: Colors.teal.shade100,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'SourceSansPro',
                                letterSpacing: 2.5
                            )
                        ),
                        SizedBox(
                            height: 20.0,
                            width: 150.0,
                            child: Divider(
                                color: Colors.teal.shade100,
                            )
                        ),
                        Card(
                            color: Colors.white,
                            margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                            child: ListTile(
                                leading: Icon(
                                    Icons.phone,
                                    color: Colors.teal,
                                ),
                                title: Text(
                                    '+1010101010',
                                    style: TextStyle(
                                        color: Colors.teal.shade900,
                                        fontFamily: 'SourceSansPro',
                                        fontSize: 20.0
                                    ),
                                )
                            )
                        ),
                        Card(
                            color: Colors.white,
                            margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                            child: ListTile(
                                leading: Icon(
                                    Icons.email,
                                    color: Colors.teal,
                                ),
                                title: Text(
                                    'quangsang222@gmail.com',
                                    style: TextStyle(
                                        color: Colors.teal.shade900,
                                        fontFamily: 'SourceSansPro',
                                        fontSize: 20.0
                                    ),
                                )
                            )
                        )
                    ],
                )
            )
        )
    );
  }
}
