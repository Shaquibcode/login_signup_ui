import 'package:flutter/material.dart';
import 'package:login_ui/components/my_button.dart';
import 'package:login_ui/components/my_text_field.dart';
import 'package:login_ui/screens/sign_up_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool showPass = false;
  showPassword() {
    setState(() {
      showPass = !showPass;
    });
  }

  bool checkTheBox = false;
  check() {
    setState(() {
      checkTheBox = !checkTheBox;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 19, 18, 18),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 40,
            ),
            const Image(
              image: AssetImage("images/radio_wave_beta.png"),
              color: Color.fromARGB(255, 10, 185, 121),
              width: 250,
            ),
            const SizedBox(
              height: 40,
            ),
            const MyTextField(hintText: "Email or UserName"),
            const SizedBox(
              height: 20,
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
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Theme(
                        data: ThemeData(
                          unselectedWidgetColor: Colors.grey[500],
                        ),
                        child: Checkbox(
                          value: checkTheBox ? true : false,
                          onChanged: (value) {
                            check();
                          },
                        ),
                      ),
                      const Text(
                        "Remember Me",
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      "Forgot Password ?",
                      style:
                          TextStyle(color: Color.fromARGB(255, 10, 185, 121)),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            MyButton(
              customColor: const Color.fromARGB(255, 10, 185, 121),
              text: "Sign In",
              ontap: () {},
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "Or Sign In With",
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
                  "Dont Have An Account?",
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
                        builder: (context) => SignUpScreen(),
                      ),
                    );
                  },
                  child: const Text(
                    "REGISTER",
                    style: TextStyle(
                      color: Color.fromARGB(255, 10, 185, 121),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
