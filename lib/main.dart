import 'package:flutter/material.dart';

//pages
import './detailsPage1.dart';

import './bahagianA.dart';
import './bahagianA2.dart';
import './bahagianA3.dart';
import './bahagianA4.dart';
import './bahagianA5.dart';
import './bahagianA6.dart';
import './bahagianA7.dart';

import './bahagianB.dart';
import './bahagianB2.dart';
import './bahagianB3.dart';
import './bahagianB4.dart';
import './bahagianB5.dart';
import './bahagianB6.dart';
import './bahagianB7.dart';
import './bahagianB8.dart';
import './bahagianB9.dart';
import './bahagianB10.dart';
import './bahagianB11.dart';
import './bahagianB12.dart';
import './bahagianB13.dart';
import './bahagianB14.dart';
import './bahagianB15.dart';

import './bahagianC.dart';
import './bahagianC2.dart';
import './bahagianC3.dart';
import './bahagianC4.dart';
import './bahagianC5.dart';
import './bahagianC6.dart';
import './bahagianC7.dart';
import './bahagianC8.dart';
import './bahagianC9.dart';
import './bahagianC10.dart';

import './bahagianD.dart';
import './bahagianD2.dart';
import './bahagianD3.dart';
import './bahagianD4.dart';
import './bahagianD5.dart';

import './bahagianE1.dart';
import './bahagianE2.dart';
import './results.dart';
import './ExpandedListAnimationWidget.dart';
import './Scrollbar.dart';

import './main.dart';

void main() {
  runApp(new MaterialApp(
    home: new Logo(),
    routes: <String, WidgetBuilder>{
      '/detailsPage1': (BuildContext context) => new LoginPage(),
      '/bahagianA': (BuildContext context) => new bahagianA(),
      '/bahagianA2': (BuildContext context) => new bahagianA2(),
      '/bahagianA3': (BuildContext context) => new bahagianA3(),
      '/bahagianA4': (BuildContext context) => new bahagianA4(),
      '/bahagianA5': (BuildContext context) => new bahagianA5(),
      '/bahagianA6': (BuildContext context) => new bahagianA6(),
      '/bahagianA7': (BuildContext context) => new bahagianA7(),
      '/bahagianB': (BuildContext context) => new bahagianB(),
      '/bahagianB2': (BuildContext context) => new bahagianB2(),
      '/bahagianB3': (BuildContext context) => new bahagianB3(),
      '/bahagianB4': (BuildContext context) => new bahagianB4(),
      '/bahagianB5': (BuildContext context) => new bahagianB5(),
      '/bahagianB6': (BuildContext context) => new bahagianB6(),
      '/bahagianB7': (BuildContext context) => new bahagianB7(),
      '/bahagianB8': (BuildContext context) => new bahagianB8(),
      '/bahagianB9': (BuildContext context) => new bahagianB9(),
      '/bahagianB10': (BuildContext context) => new bahagianB10(),
      '/bahagianB11': (BuildContext context) => new bahagianB11(),
      '/bahagianB12': (BuildContext context) => new bahagianB12(),
      '/bahagianB13': (BuildContext context) => new bahagianB13(),
      '/bahagianB14': (BuildContext context) => new bahagianB14(),
      '/bahagianB15': (BuildContext context) => new bahagianB15(),
      '/bahagianC': (BuildContext context) => new bahagianC(),
      '/bahagianC2': (BuildContext context) => new bahagianC2(),
      '/bahagianC3': (BuildContext context) => new bahagianC3(),
      '/bahagianC4': (BuildContext context) => new bahagianC4(),
      '/bahagianC5': (BuildContext context) => new bahagianC5(),
      '/bahagianC6': (BuildContext context) => new bahagianC6(),
      '/bahagianC7': (BuildContext context) => new bahagianC7(),
      '/bahagianC8': (BuildContext context) => new bahagianC8(),
      '/bahagianC9': (BuildContext context) => new bahagianC9(),
      '/bahagianC10': (BuildContext context) => new bahagianC10(),
      '/bahagianD': (BuildContext context) => new bahagianD(),
      '/bahagianD2': (BuildContext context) => new bahagianD2(),
      '/bahagianD3': (BuildContext context) => new bahagianD3(),
      '/bahagianD4': (BuildContext context) => new bahagianD4(),
      '/bahagianD5': (BuildContext context) => new bahagianD5(),
      '/bahagianE1': (BuildContext context) => new bahagianE1(),
      '/bahagianE2': (BuildContext context) => new bahagianE2(),
      '/results': (BuildContext context) => new dresults(),
      '/main': (BuildContext context) => new Logo(),
      '/Scrollbar': (BuildContext context) => new MyScrollbar(),
      '/ExpandedListAnimationWidget': (BuildContext context) =>
          new ExpandedSection(),
    },
  ));
}

class Logo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        backgroundColor: Colors.white,
        appBar: new AppBar(
          title: Text('ezEKSA'),
          backgroundColor: Colors.yellow[700],
          elevation: 1.0,
          centerTitle: true,
        ),
        body: Center(
            child: new Column(
          children: <Widget>[
            Padding(padding: EdgeInsets.only(top: 50.0)),
            Image(
              image: AssetImage('images/playstore.png'),
              height: 300,
              width: 300,
            ),
            Padding(padding: EdgeInsets.only(top: 20.0)),
            new ElevatedButton(
                child: new Text('Seterusnya'),
                onPressed: () => Navigator.pushNamed(context, '/bahagianB')),
          ],
        )));
  }
}
