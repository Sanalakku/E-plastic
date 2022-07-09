import 'package:flutter/material.dart';

class Ratecart extends StatefulWidget {
  const Ratecart({Key? key}) : super(key: key);

  @override
  State<Ratecart> createState() => _RatecartState();
}

class _RatecartState extends State<Ratecart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(shrinkWrap: true, children: <Widget>[
        Column(crossAxisAlignment: CrossAxisAlignment.start, children: <Widget>[
          Stack(children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.height,
              width: double.infinity,
            ),
            Container(
              height: 250.0,
              width: double.infinity,
              color: Colors.yellow,
            ),
            Positioned(
              bottom: 450.0,
              right: 100.0,
              child: Container(
                height: 400.0,
                width: 400.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(200.0),
                  color: Colors.yellowAccent,
                ),
              ),
            ),
          ]),
        ]),
      ]),
    );
  }
}
