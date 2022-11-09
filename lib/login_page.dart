library cool_alert;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:cool_alert/cool_alert.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final emailController = TextEditingController();
  final passController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.android_rounded,
                size: 100,
              ),
              //text
              Text('Hallo!',
                  style: GoogleFonts.aBeeZee(
                    fontSize: 40,
                  )),
              SizedBox(
                height: 10,
              ),
              Text(
                'Hai!',
                style: TextStyle(
                  fontSize: 25,
                ),
              ),
              SizedBox(height: 20),
              //email
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: TextField(
                      controller: emailController,
                      autofocus: true,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Email',
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),
              //password
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: TextField(
                      controller: passController,
                      obscureText: true,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Password',
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),
              //signin
              MaterialButton(
                onPressed: () {
                  String email = emailController.text;
                  String pass = passController.text;
                  CoolAlert.show(
                    context: context,
                    type: CoolAlertType.success,
                    text: '$email, $pass',
                  );
                },
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                elevation: 20,
                color: Colors.purple,
                child: Center(
                  child: Text(
                    'Masuk',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),
              //register
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'belum daftar?',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    ' daftar sekarang!',
                    style: TextStyle(
                        color: Colors.blue, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
