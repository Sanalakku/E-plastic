import 'package:eplastic_waste/constants/color.dart';
import 'package:eplastic_waste/screens/reset_page.dart';
import 'package:flutter/material.dart';

class ForgotPassword extends StatelessWidget {
  static String id = 'forgot-password';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: dark,
      body: Form(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'ENTER YOUR E-MAIL',
                style: TextStyle(fontSize: 25, color: Colors.white),
              ),
              const SizedBox(
                height: 30,
              ),
              TextFormField(
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  labelText: 'Email',
                  icon: Icon(
                    Icons.mail,
                    color: Colors.white,
                  ),
                  errorStyle: TextStyle(color: Colors.white),
                  labelStyle: TextStyle(color: Colors.white),
                  hintStyle: TextStyle(color: Colors.white),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                  errorBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(
                      builder: (ctx) {
                        return ScreenChangePassword();
                      },
                    ),
                  );
                },
                child: Text('NEXT'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
