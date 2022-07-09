// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:eplastic_waste/constants/color.dart';
import 'package:eplastic_waste/screens/home_page.dart';
import 'package:eplastic_waste/screens/signin_page.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _idController = TextEditingController();
  final _passwordController = TextEditingController();
  bool _isDataMatched = false;
  final _formKey = GlobalKey<FormState>();

  Future signIn() async {
    await FirebaseAuth.instance.signInWithEmailAndPassword(
      email: _idController.text.trim(),
      password: _passwordController.text.trim(),
    );
  }

  @override
  void dispose() {
    _idController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: dark,
      body: Center(
        child: Form(
          key: _formKey,
          child: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.phone_android,
                  size: 100,
                ),
                Text(
                  'LOG-IN',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 36,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  'E-PLASTICA',
                  style: TextStyle(
                    fontSize: 30,
                  ),
                ),
                SizedBox(height: 50),
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
                      child: TextFormField(
                          controller: _idController,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'email',
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Value empty';
                            } else {
                              return null;
                            }
                          }),
                    ),
                  ),
                ),
                SizedBox(height: 10),
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
                      child: TextFormField(
                        controller: _passwordController,
                        obscureText: true,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Value empty';
                          } else {
                            return null;
                          }
                        },
                        decoration: const InputDecoration(
                          // suffix: IconButton(
                          //   onPressed: () {
                          //     setState(() {
                          //       _isVisible = !_isVisible;
                          //     });
                          //   },
                          //   icon: _isVisible
                          //       ? const Icon(
                          //           Icons.visibility,
                          //           color: Colors.black,
                          //         )
                          //       : const Icon(
                          //           Icons.visibility_off,
                          //           color: Colors.grey,
                          //         ),
                          // ),
                          border: InputBorder.none,
                          hintText: 'password',
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                // Padding(
                //   padding: const EdgeInsets.symmetric(horizontal: 25.0),
                //   child: Container(
                //     padding: const EdgeInsets.all(20),
                //     decoration: BoxDecoration(
                //       color: Colors.deepPurple,
                //       borderRadius: BorderRadius.circular(12),
                //     ),
                //    ),
                // ),
                ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        signIn();
                      }
                    },
                    child: Text('LOG IN ')),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'NOT A MEMBER',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    TextButton(
                        onPressed: () {
                          Navigator.of(context).pushReplacement(
                            MaterialPageRoute(
                              builder: (ctx) {
                                return SigninPage();
                              },
                            ),
                          );
                        },
                        child: Text('SIGN-IN')),
                    Visibility(
                      visible: _isDataMatched,
                      child: const Text(
                        'Invalid entries',
                        style: TextStyle(color: Colors.red),
                      ),
                    ),

                    // TextButton(
                    //   'Sign In',
                    //   style: TextStyle(
                    //     color: Colors.blue,
                    //     fontWeight: FontWeight.bold,
                    //   ),
                    // ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // void _checkLogin(BuildContext ctx) {
  //   final _id = _idController.text;
  //   final _password = _passwordController.text;
  //   if (_id == _password) {
  //     Future.delayed(Duration.zero, () {
  //       setState(() {
  //         Navigator.of(context).push(
  //           MaterialPageRoute(
  //             builder: ((ctx1) => HomePage()),
  //           ),
  //         );
  //       });
  //     });
  //   } else {
  //     setState(() {
  //       _isDataMatched = true;
  //     });
  //   }
  // }
}
