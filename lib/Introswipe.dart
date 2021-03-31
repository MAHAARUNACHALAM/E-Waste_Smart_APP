import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import 'Startup.dart';
import 'package:flutter/material.dart';
import 'package:flutter_stack_card/flutter_stack_card.dart';

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

Color myHexColor = HexColor("#25497F");
Color myHexColor1 = HexColor("#427F00");
Color myHexColor2 = HexColor("#FFDB8C");

class Routes {
  static const String firstPage = '/';
  static const String secondPage = '/LoginScreen';
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MyHomePage(title: 'E-Waste');
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Ewaste> _ewasteData = Ewaste().ewasteData;
  var width, height;

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: myHexColor,
      ),
      backgroundColor: myHexColor1,
      floatingActionButton: FlatButton(
        onPressed: () => Navigator.pushNamed(context, "/login"),
        child: Text(
          "Skip",
          style: TextStyle(color: myHexColor2),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: Padding(
        padding: const EdgeInsets.only(top: 5, bottom: 5),
        child: StackCard.builder(
          displayIndicator: true,
          displayIndicatorBuilder:
              IdicatorBuilder(displayIndicatorActiveColor: myHexColor),
          itemCount: _ewasteData.length,
          onSwap: (index) {
            print("Page change to $index");
          },
          itemBuilder: (context, index) {
            Ewaste startup = _ewasteData[index];
            return _itemBuilder(startup);
          },
        ),
      ),
    );
  }

  Widget _itemBuilder(Ewaste startup) {
    return Container(
      child: Stack(children: <Widget>[
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(12)),
              color: myHexColor2),
        ),
        SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                height: height * .5,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                    image: DecorationImage(
                        image: ExactAssetImage(startup.image),
                        fit: BoxFit.cover)),
              ),
              Container(
                height: height * .45,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Container(
                            width: 190,
                            child: Text(
                              startup.title,
                              style: TextStyle(
                                  color: Colors.green,
                                  fontSize: 32,
                                  fontWeight: FontWeight.bold),
                              textAlign: TextAlign.right,
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: <Widget>[
                              SizedBox(height: 4),
                              SizedBox(height: 12),
                            ],
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 0),
                        child: Text(startup.gendres,
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 24)),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(
                              bottom: 8, top: 0, left: 20),
                          child: Text(startup.desc,
                              style: TextStyle(color: Colors.black87)),
                        ),
                      ),
                      Center(
                        child: IconButton(
                            icon: Icon(Icons.drag_handle, color: myHexColor2),
                            alignment: Alignment.center,
                            onPressed: () {
                              // Navigator.push(
                              //   context,
                              //   MaterialPageRoute(
                              //       builder: (context) => LoginScreen()),
                              // );
                            }),
                      ),

                      // RaisedButton(
                      //   onPressed: () {
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(
                      //     builder: (BuildContext context) => LoginScreen(),
                      //   ),
                      // );
                      //   },
                      //   child: Text(
                      //     "Skip",
                      //     style: TextStyle(
                      //         fontSize: 20.0, backgroundColor: Colors.green),
                      //     textAlign: TextAlign.right,
                      //   ),
                      // )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
