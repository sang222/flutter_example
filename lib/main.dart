import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(

    home: Scaffold(
        appBar: AppBar(
            title: Text('I am rich'),
            backgroundColor: Colors.blueGrey[800],
        ),
        body: Center(
          child: Container(
            child: Image(
                image: NetworkImage('https://image.shutterstock.com/image-photo/white-transparent-leaf-on-mirror-260nw-577160911.jpg')
            ),
          ),
        )
    ),
));
