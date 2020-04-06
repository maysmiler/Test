import 'package:flutter/material.dart';

class MenuList extends StatefulWidget {
  @override
  _MenuList createState() => _MenuList();
}

class _MenuList extends State<MenuList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrange[100],
      appBar: AppBar(
        backgroundColor: Colors.redAccent[100],
        title: Text('รายการ'),
        leading: FlatButton(
          textColor: Colors.white,
          child: Icon
          (Icons.arrow_back,
        ),
        onPressed: () => print('Back'),
        ),
        actions: <Widget>[
          
        ],
      ),
    );
  }
}
