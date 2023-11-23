import 'package:flutter/material.dart';
import 'package:login_ui/components/my_text_field.dart';
import 'package:login_ui/screens/login_screen.dart';

import '../components/my_button.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool showPass = false;
  bool showConfPass = false;

  showPassword() {
    setState(() {
      showPass = !showPass;
    });
  }

  showConfPassword() {
    setState(() {
      showConfPass = !showConfPass;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 19, 18, 18),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  const SizedBox(
                    height: 30,
                  ),
                  const Image(
                    image: AssetImage("images/radio_wave_beta.png"),
                    color: Color.fromARGB(255, 10, 185, 121),
                    width: 250,
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const MyTextField(hintText: "Name"),
                  const SizedBox(
                    height: 12,
                  ),
                  const MyTextField(hintText: "Email"),
                  const SizedBox(
                    height: 12,
                  ),
                  MyTextField(
                    hintText: "Password",
                    onpressed: showPassword,
                    obscuretext: showPass ? false : true,
                    icon: showPass ? Icons.visibility_off : Icons.visibility,
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  MyTextField(
                    hintText: "Confirm Password",
                    onpressed: showConfPassword,
                    obscuretext: showConfPass ? false : true,
                    icon:
                        showConfPass ? Icons.visibility_off : Icons.visibility,
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  MyButton(
                    customColor: const Color.fromARGB(255, 10, 185, 121),
                    text: "Sign Up",
                    ontap: () {},
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    "Or Sign Up With",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        padding: const EdgeInsets.all(7),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.grey.shade700),
                        ),
                        child: const Image(
                          image: AssetImage("images/facebook.png"),
                          width: 50,
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Container(
                        padding: const EdgeInsets.all(7),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.grey.shade700),
                        ),
                        child: const Image(
                          image: AssetImage("images/google.png"),
                          width: 50,
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Container(
                        padding: const EdgeInsets.all(7),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.grey.shade700),
                        ),
                        child: Icon(
                          Icons.apple,
                          color: Colors.white.withOpacity(0.5),
                          size: 50,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Already Have An Account?",
                        style: TextStyle(color: Colors.white),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => LoginScreen(),
                            ),
                          );
                        },
                        child: const Text(
                          "LOGIN",
                          style: TextStyle(
                            color: Color.fromARGB(255, 10, 185, 121),
                          ),
                        ),
                      ),
                    ],
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
