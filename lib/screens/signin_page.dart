import 'package:eplastic_waste/constants/color.dart';
import 'package:eplastic_waste/screens/home_page.dart';
import 'package:eplastic_waste/screens/login_page.dart';
import 'package:flutter/material.dart';

class SigninPage extends StatefulWidget {
  const SigninPage({Key? key}) : super(key: key);

  @override
  State<SigninPage> createState() => _SigninPageState();
}

class _SigninPageState extends State<SigninPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: dark,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.phone_android,
              size: 100,
            ),
            Text(
              'SIGN-UP',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 36,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'E-PLASTICA',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            SizedBox(height: 70),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  border: Border.all(color: Colors.white),
                  borderRadius: BorderRadius.circular(14),
                ),
                child: const Padding(
                  padding: EdgeInsets.only(left: 20.0),
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Name',
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  border: Border.all(color: Colors.white),
                  borderRadius: BorderRadius.circular(14),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'PHONE NUMBER',
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  border: Border.all(color: Colors.white),
                  borderRadius: BorderRadius.circular(14),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'E-MAIL',
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 15),
            // password testfield
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  border: Border.all(color: Colors.white),
                  borderRadius: BorderRadius.circular(14),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'PASSWORD',
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 15),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(
                      builder: (ctx) {
                        return HomePage();
                      },
                    ),
                  );
                },
                child: Text('SIGN-UP')),

            TextButton(
                onPressed: () {
                  Future.delayed(
                    Duration.zero,
                    (() {
                      setState(() {
                        Navigator.of(context).pushReplacement(
                          MaterialPageRoute(builder: ((context) => HomePage())),
                        );
                      });
                    }),
                  );
                },
                child: const Text('Close')),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'ALREADY A MEMBER?',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextButton(
                    onPressed: () {
                      Navigator.of(context).pushReplacement(
                        MaterialPageRoute(
                          builder: (ctx) {
                            return LoginPage();
                          },
                        ),
                      );
                    },
                    child: Text('LOGIN'))
                // TextButton(
                //   'Sign In',
                //   style: TextStyle(
                //     color: Colors.blue,
                //     fontWeight: FontWeight.bold,
                //   ),
                // ),
              ],
            ),
            // Padding(
            //   padding: const EdgeInsets.symmetric(horizontal: 25.0),
            //   child: Container(
            //     padding: const EdgeInsets.all(20),
            //     decoration: BoxDecoration(
            //       color: Colors.deepPurple,
            //       borderRadius: BorderRadius.circular(12),
            //     ),
            //   // ElevatedButton(onPressed: () {}, child: Text('Sign-In ')),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
