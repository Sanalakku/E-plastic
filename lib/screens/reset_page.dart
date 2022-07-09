import 'package:eplastic_waste/constants/color.dart';
import 'package:eplastic_waste/screens/forgetpass_page.dart';
import 'package:flutter/material.dart';

class ScreenChangePassword extends StatefulWidget {
  const ScreenChangePassword({Key? key}) : super(key: key);

  @override
  State<ScreenChangePassword> createState() => _ScreenChangePasswordState();
}

class _ScreenChangePasswordState extends State<ScreenChangePassword> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 25,
          backgroundColor: dark,
          title: Container(
            height: 50,
            width: 250,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/logo1.png'),
              ),
            ),
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'RESET PASSWORD',
                style: GoogleFonts.pressStart2p(
                  fontWeight: FontWeight.bold,
                  fontSize: 5,
                ),
              ),
              const SizedBox(
                height: 45,
              ),
              Flexible(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 50),
                  child: TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: 'Current password',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(35),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Flexible(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 50),
                  child: TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: 'New password',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(35),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Flexible(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 50),
                  child: TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: 'New password, again',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(35),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              GestureDetector(
                onTap: () => openDialog(),
                child: Container(
                  height: 30,
                  width: 180,
                  decoration: BoxDecoration(
                    color: dark,
                    borderRadius: BorderRadius.circular(35),
                  ),
                  child: Center(
                    child: Text(
                      'DONE',
                      style: GoogleFonts.pressStart2p(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future openDialog() => showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: const Text(
            'UPDATED SUCCESSFULLY',
            style: TextStyle(fontSize: 14),
          ),
          actions: [
            TextButton(
                onPressed: () {
                  Future.delayed(
                    Duration.zero,
                    (() {
                      setState(() {
                        Navigator.of(context).pushReplacement(
                          MaterialPageRoute(
                              builder: ((context) => ForgotPassword())),
                        );
                      });
                    }),
                  );
                },
                child: const Text('Close'))
          ],
        ),
      );
}

class GoogleFonts {
  static pressStart2p({required FontWeight fontWeight, int? fontSize}) {}
}
