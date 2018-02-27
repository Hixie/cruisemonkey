import 'package:flutter/material.dart';

import 'models.dart';

void main() => runApp(const CruiseMonkey());

class CruiseMonkey extends StatefulWidget {
  const CruiseMonkey({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _CruiseMonkeyState createState() => new _CruiseMonkeyState();
}

class _CruiseMonkeyState extends State<CruiseMonkey> {
  User _currentUser;

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'CruiseMonkey',
      theme: new ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: new Scaffold(
        appBar: new AppBar(
          title: const Text('CruiseMonkey'),
        ),
        drawer: new Drawer(
          child: new ListView(
            children: <Widget>[
              new UserAccountsDrawerHeader(
                accountName: new Text(_currentUser?.name ?? 'Not logged in'),
                accountEmail: new Text(_currentUser?.email ?? ''),
              ),
              const AboutListTile(
                aboutBoxChildren: const <Widget>[
                  const Text('A project of the Seamonkey Social group.'),
                ],
              ),
            ],
          ),
        ),
        body: null,
      ),
    );
  }
}
