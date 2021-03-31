import 'package:ewaste/homepage.dart';
import 'package:flutter/material.dart';

class OrderConfirm extends StatefulWidget {
  @override
  _OrderConfirmState createState() => _OrderConfirmState();
}

class _OrderConfirmState extends State<OrderConfirm> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('E-waste'),
          backgroundColor: b,
        ),
        backgroundColor: y,
        body: Center(
          child: Column(
            children: <Widget>[
              Image.asset(
                'assets/images/tick.png',
                scale: 3,
              ),
              Text(
                'Order Confirmed',
                style: TextStyle(fontSize: 20.0),
              ),
              RaisedButton(
                color: Colors.red,
                textColor: y,
                splashColor: b,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(30))),
                padding: EdgeInsets.all(15.0),
                child: Text('Home'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) => home(),
                    ),
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
