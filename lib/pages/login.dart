import 'dart:math';

import 'package:flutter/material.dart';
import 'package:responsive_register_login_ui/pages/register.dart';

import '../util/widgets/big_button.dart';
import '../util/widgets/small_button.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 15, right: 15, top: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Stack(children: [
                  Positioned(
                      child: Image.asset(
                    "lib/images/login.jpg",
                    height: height * 0.29,
                  )),
                  Positioned(
                      bottom: height * 0.050,
                      left: width * 0.010,
                      child: Transform.rotate(
                          angle: pi / 3,
                          child: Image.asset(
                            "lib/images/square.png",
                            height: height * 0.040,
                          ))),
                  Positioned(
                      bottom: width * 0.070,
                      right: width * 0.030,
                      child: Transform.rotate(
                          angle: pi / 3,
                          child: Image.asset(
                            "lib/images/triangle.png",
                            height: height * 0.040,
                          ))),
                  Positioned(
                      top: height * 0.040,
                      right: width * 0.05,
                      child: Transform.rotate(
                          angle: pi / 3,
                          child: Image.asset(
                            "lib/images/circle.png",
                            height: 40,
                          ))),
                ]),
              ),
              const SizedBox(height: 30),
              const Text(
                "Login",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
              ),
              const SizedBox(height: 25),
              const TextField(
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.email), hintText: "Email ID"),
              ),
              const SizedBox(height: 20),
              const TextField(
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.lock_outline_rounded),
                      hintText: "Password",
                      suffix: Text(
                        'Forgot?',
                        style: TextStyle(
                            color: Color(0xFF3D5AFE),
                            fontWeight: FontWeight.w600),
                      ))),
              const SizedBox(height: 30),
              const BigButton(text: 'Login'),
              const SizedBox(height: 30),
              const Center(
                  child: Text('Or, login with...',
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 15,
                          fontWeight: FontWeight.w500))),
              const SizedBox(height: 30),
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    SmallBtn(
                      icon: 'lib/images/google.png',
                    ),
                    SmallBtn(icon: 'lib/images/facebook.png'),
                    SmallBtn(icon: "lib/images/apple.png"),
                  ]),
              const SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('New to iLogistics?',
                      style:
                          TextStyle(color: Colors.grey.shade600, fontSize: 16)),
                  TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const RegisterPage()));
                      },
                      child: const Text('Register',
                          style: TextStyle(
                              color: Color(0xFF3D5AFE),
                              fontWeight: FontWeight.bold)))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
