import 'package:flutter/material.dart';

void main() => runApp(Aboutus());

// ignore: use_key_in_widget_constructors
class Aboutus extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 4, 7, 57),
          elevation: 0.0,
          title: const Text(
            'ABOUT US',
            style: TextStyle(
              fontSize: 23,
            ),
          ),
          centerTitle: true,
        ),

        backgroundColor: const Color.fromARGB(255, 186, 235, 188),

        //Text widgets
        //  multi-line or not, need a Scaffold widget somewhere up the widget tree.
        body: Row(
            //Widgets which help to display a list of children widgets are the 'culprit', they make your text widget not know what the maximum width is. In OP's example it is the ButtonBar widget.
            children: [
              Container(
                height: 150,
                width: 150,
                child: Image(image: AssetImage('assets/images/elogo1.jpeg')),
                decoration: const BoxDecoration(),
              ),

              SizedBox(width: 3),
              // ignore: sized_box_for_whitespace
              Container(
                width:
                    100, //This helps the text widget know what the maximum width is again! You may also opt to use an Expanded widget instead of a Container widget, if you want to use all remaining space.

                //I added this widget to show that the width limiting widget doesn't need to be a direct parent.
                child: Text(
                    'E-plastica is a startup with a bull’s eye vison whose only ambition is to serve our nation folks with a GO Green Environment. '),
              ),

              Container(
                width:
                    100, //This helps the text widget know what the maximum width is again! You may also opt to use an Expanded widget instead of a Container widget, if you want to use all remaining space.

                //I added this widget to show that the width limiting widget doesn't need to be a direct parent.
                child: Text(
                    'E-PLASTICA landed its feet in online Scrap market to resolve all the loopholes related to Buy & Sell of waste from the customers online. '),
              ),
            ]),
      ),
    );
  }
}
