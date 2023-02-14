import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_3/screen/forgetpass_page.dart';
import 'package:flutter_application_3/screen/login_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import '../const/constant.dart';

class Complaints extends StatefulWidget {
  const Complaints({Key? key}) : super(key: key);

  @override
  State<Complaints> createState() => _ComplaintsState();
}

class _ComplaintsState extends State<Complaints> {
  final _firstnameController = TextEditingController();
  final _secondController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmpasswordController = TextEditingController();
  final bool _isDataMatched = false;
  final _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    _firstnameController.dispose();
    _secondController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _confirmpasswordController.dispose();
    super.dispose();
  }

  Future signUp() async {
    if (passwordConfirmed()) {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: _emailController.text.trim(),
        password: _passwordController.text.trim(),
      );
      addUserDetails(
        _firstnameController.text.trim(),
        _secondController.text.trim(),
        _emailController.text.trim(),
      );
    }
  }

  Future addUserDetails(
    String firstName,
    String secondName,
    String email,
  ) async {
    await FirebaseFirestore.instance.collection('users').add({
      'firstname': firstName,
      'secondname': secondName,
      'email': email,
    });
  }

  bool passwordConfirmed() {
    if (_passwordController.text.trim() ==
        _confirmpasswordController.text.trim()) {
      return true;
    } else {
      return false;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 4, 7, 57),
          elevation: 0.0,
          title: const Text(
            'COMPLAINTS',
            style: TextStyle(
              fontSize: 23,
            ),
          ),
          centerTitle: true,
        ),
        backgroundColor: Color.fromARGB(255, 28, 30, 76),
        body: Center(
            child: Form(
                key: _formKey,
                child: SafeArea(
                    child: SingleChildScrollView(
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                      Container(
                        height: 150,
                        width: 150,
                        child:
                            Image(image: AssetImage('assets/images/elogo.png')),
                        decoration: const BoxDecoration(),
                      ),
                      SizedBox(height: 30),
                      const Text(
                        'RAISE YOUR COMPLAINTS HERE !',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.red,
                          fontSize: 20,
                        ),
                      ),
                      SizedBox(height: 30),
                      Container(
                        child: Image(
                            image: AssetImage('assets/images/elogo2.gif')),
                        decoration: const BoxDecoration(),
                      ),
                      SizedBox(height: 30),
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
                                controller: _firstnameController,
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: 'NAME',
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
                      SizedBox(height: 20),
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
                                controller: _emailController,
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: 'Email',
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
                      SizedBox(height: 20),
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
                              controller: _confirmpasswordController,
                              obscureText: true,
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Value empty';
                                } else {
                                  return null;
                                }
                              },
                              decoration: const InputDecoration(
                                border: InputBorder.none,
                                hintText: ' RAISE YOUR COMPLAINTS',
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 20),

                      GestureDetector(
                          onTap: () {
                            showDialog(
                                context: context,
                                builder: (context) {
                                  return AlertDialog(
                                    actions: [
                                      GestureDetector(
                                        onTap: () {
                                          FirebaseAuth.instance.signOut();
                                          Navigator.of(context).pop();
                                        },
                                        child: Text(
                                          'confirm',
                                        ),
                                      ),
                                    ],
                                    content:
                                        Text('Do you really want to confirm'),
                                  );
                                });
                          },
                          child: Text('SUBMIT'))
                      // SizedBox(height: 15),
                    ]))))));
  }
}
