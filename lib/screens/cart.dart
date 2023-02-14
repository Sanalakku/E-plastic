import 'package:flutter/material.dart';
import 'package:flutter_application_3/screen/cart2.dart';
import 'package:flutter_application_3/screen/form_page.dart';
import 'package:flutter_application_3/screen/home_page.dart';

class Cart extends StatefulWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  Widget _selectedCleaning({
    required Color color,
    required String title,
    required String subtitle,
  }) {
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 5,
      ),
      padding: const EdgeInsets.only(
        left: 20,
      ),
      height: 120,
      width: 280,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(
          15,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: 22,
              color: Colors.white,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            subtitle,
            style: const TextStyle(
              fontSize: 19,
              color: Colors.white70,
            ),
          )
        ],
      ),
    );
  }

  Widget _selectedExtras({required String image, required String name}) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            10,
          ),
          border: Border.all(
            color: Color.fromARGB(255, 0, 0, 0),
            width: 2,
          )),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 60,
            decoration:
                BoxDecoration(image: DecorationImage(image: AssetImage(image))),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            name,
            style: TextStyle(
              fontSize: 17,
            ),
          ),
        ],
      ),
    );
  }

  Widget _selectedFrequency({
    required Color color,
    required String title,
    required BoxBorder border,
    required TextStyle textStyle,
  }) {
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 7,
        vertical: 50,
      ),
      padding: EdgeInsets.symmetric(
        horizontal: 14,
        vertical: 5,
      ),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(7),
        border: border,
      ),
      child: Center(
        child: Text(
          title,
          style: textStyle,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 4, 7, 57),
          elevation: 0.0,
          title: const Text(
            'RATE CART',
            style: TextStyle(
              fontSize: 23,
            ),
          ),
          centerTitle: true,
        ),
        //body

        body: Container(
            child: Container(
          height: 900,
          width: double.infinity,
          decoration: const BoxDecoration(
            color: Color.fromARGB(255, 247, 250, 247),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30),
            ),
          ),
          child: ListView(
              padding: const EdgeInsets.only(
                left: 30,
                top: 30,
              ),
              children: [
                // ignore: duplicate_ignore
                Padding(
                    // ignore: prefer_const_constructors
                    padding: EdgeInsets.only(
                      top: 30,
                      right: 25,
                    ), // ignore: sized_box_for_whitespace
                    child: Container(
                        height: 600,
                        child: GridView.count(
                            crossAxisCount: 2,
                            crossAxisSpacing: 8,
                            mainAxisSpacing: 4,
                            childAspectRatio: 1.30,
                            children: [
                              _selectedExtras(
                                name: 'BOTTLE  50/KG',
                                image: 'assets/images/bottlle.jpg',
                              ),
                              _selectedExtras(
                                name: 'WIRE  100/KG',
                                image: 'assets/images/wire.jpg',
                              ),
                              _selectedExtras(
                                // image: 'images/icons.jpg',
                                name: 'TOY  50/kg',
                                image: 'assets/images/plastictoy.jpg',
                              ),
                              _selectedExtras(
                                // image: 'images/icons.jpg',
                                name: 'COOLERS   400/PIECE',
                                image: 'assets/images/coolers.jpg',
                              ),
                              _selectedExtras(
                                // image: 'images/icons.jpg',
                                name: 'PIPE  100/KG',
                                image: 'assets/images/pipe.jpg',
                              ),
                              _selectedExtras(
                                // image: 'images/icons.jpg',
                                name: 'BUCKET 30/KG',
                                image: 'assets/images/bucket.jpg',
                              ),
                              _selectedExtras(
                                // image: 'images/icons.jpg',
                                name: 'GAURD 100/KG',
                                image: 'assets/images/gaurd.jpg',
                              ),
                              _selectedExtras(
                                // image: 'images/icons.jpg',
                                name: 'ROPE 30/KG',
                                image: 'assets/images/rope.jpg',
                              ),
                              TextButton(
                                  onPressed: () {
                                    Navigator.of(context).pushReplacement(
                                      MaterialPageRoute(
                                        builder: (ctx) {
                                          return Carttwo();
                                        },
                                      ),
                                    );
                                  },
                                  child: Text('NEXT')),
                            ])))
              ]),
        )));
  }
}
