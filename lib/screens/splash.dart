import 'package:eplastic_waste/screens/login_page.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);
  String name = 'E-PLASTICA';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.greenAccent[400],
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 41, 227, 153),
            borderRadius: BorderRadius.circular(5),
            border: Border.all(color: Colors.blueGrey, width: 2),
          ),
          width: double.infinity,
          height: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                name,
                textAlign: TextAlign.left,
                style: const TextStyle(
                  color: Colors.blueGrey,
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(
                      builder: (ctx) {
                        return LoginPage();
                      },
                    ),
                  );
                },
                child: Text('GET START'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
