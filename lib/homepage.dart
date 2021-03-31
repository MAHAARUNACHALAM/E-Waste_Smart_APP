import 'package:ewaste/deviceInfo.dart';
import 'package:ewaste/orderconfirmation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

const IconData camera = IconData(0xe62e, fontFamily: 'MaterialIcons');

void main() => runApp(new MaterialApp(
      home: new home(),
    ));

class HexColor extends Color {
  static int _getColorFromHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll("#", "");
    if (hexColor.length == 6) {
      hexColor = "FF" + hexColor;
    }
    return int.parse(hexColor, radix: 16);
  }

  HexColor(final String hexColor) : super(_getColorFromHex(hexColor));
}

Color b = HexColor("#25497F");
Color g = HexColor("#427F00");
Color y = HexColor("#FFDB8C");
Color o = HexColor("#FF5100");

class home extends StatefulWidget {
  @override
  _home createState() => _home();
}

class _home extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('E-Waste cart'),
          backgroundColor: b,
        ),
        backgroundColor: y,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              FlatButton(
                color: o,
                textColor: b,
                splashColor: Colors.black,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(30))),
                padding: EdgeInsets.all(15.0),
                child: Text('Non Working E-waste'),
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => SecondPage()));
                },
              ),
              FlatButton(
                color: o,
                textColor: b,
                splashColor: Colors.black,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(30))),
                padding: EdgeInsets.all(15.0),
                child: Text('working E-waste'),
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => SecondPage()));
                },
              ),
              FlatButton(
                color: o,
                textColor: b,
                splashColor: Colors.black,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(30))),
                padding: EdgeInsets.all(15.0),
                child: Text('Current device'),
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => DeviceInfo()));
                },
              ),
              FlatButton(
                color: o,
                textColor: b,
                splashColor: Colors.black,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(30))),
                padding: EdgeInsets.all(15.0),
                child: Text('More'),
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => SecondPage()));
                },
              ),
            ],
          ),
        ));
  }
}

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('E-Waste'),
        backgroundColor: b,
      ),
      backgroundColor: Colors.greenAccent[100],
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            TextField(
              decoration: new InputDecoration(
                labelText: "Product Type",
              ),
              cursorColor: y,
            ),
            TextField(
              decoration: new InputDecoration(
                labelText: 'Brand',
              ),
            ),
            TextField(
              decoration: new InputDecoration(
                labelText: 'Model/size',
              ),
            ),
            TextField(
              decoration: new InputDecoration(
                labelText: 'Address',
              ),
            ),
            TextField(
              decoration: new InputDecoration(
                labelText: 'Pincode',
              ),
              keyboardType: TextInputType.number,
            ),
            RaisedButton.icon(
              onPressed: () {
                Null;
              },
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              icon: Icon(MdiIcons.camera),
              label: Text("Upload Pic"),
              textColor: b,
              color: y,
            ),
            RaisedButton(
              color: Colors.red,
              textColor: y,
              splashColor: b,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(30))),
              padding: EdgeInsets.all(15.0),
              child: Text('Submit'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => OrderConfirm(),
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}

class ThirdPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('E-Waste'),
        backgroundColor: b,
      ),
      backgroundColor: Colors.greenAccent[100],
      body: Column(
        children: <Widget>[
          TextField(
            decoration: new InputDecoration(
              labelText: 'Address',
            ),
          ),
          TextField(
            decoration: new InputDecoration(
              labelText: 'Pincode',
            ),
            keyboardType: TextInputType.number,
          ),
          RaisedButton(
            color: Colors.red,
            textColor: y,
            splashColor: b,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(30))),
            padding: EdgeInsets.all(15.0),
            child: Text('Submit'),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (BuildContext context) => OrderConfirm(),
                ),
              );
            },
          )
        ],
      ),
    );
  }
}
