import 'package:flutter/material.dart';
import 'package:responsive_register_login_ui/pages/login.dart';

import '../util/widgets/big_button.dart';
import '../util/widgets/small_button.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 15, right: 15, top: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Image.asset(
                    "lib/images/register.png",
                    height: height * 0.25,
                  ),
                ),
                const SizedBox(height: 30),
                const Text(
                  "Sign up",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                ),
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
                const Center(
                    child: Text('Or, register with...',
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 15,
                            fontWeight: FontWeight.w500))),
                const SizedBox(height: 30),
                const TextField(
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.email), hintText: "Email ID"),
                ),
                const SizedBox(height: 20),
                const TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.lock_outline_rounded),
                        hintText: "Password")),
                const SizedBox(height: 20),
                const TextField(
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.person), hintText: "Full name")),
                const SizedBox(height: 20),
                const TextField(
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.add_business),
                        hintText: "Company name")),
                const SizedBox(height: 30),
                const BigButton(text: 'Register'),
                const SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Already have an account?',
                        style: TextStyle(
                            color: Colors.grey.shade600, fontSize: 16)),
                    TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const LoginPage()));
                        },
                        child: const Text('Login',
                            style: TextStyle(
                                color: Color(0xFF3D5AFE),
                                fontWeight: FontWeight.bold)))
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
