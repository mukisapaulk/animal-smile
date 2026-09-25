import 'package:animal_smile/screens/authentication/forgot_password_screen.dart';
import 'package:animal_smile/screens/authentication/sign_up_screen.dart';
import 'package:animal_smile/utils/big_title_text.dart';
import 'package:animal_smile/utils/input_field.dart';
import 'package:animal_smile/utils/main_button.dart';
import 'package:animal_smile/utils/main_button_with_icon.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  //color schema
  Color primaryColor = const Color(0xFF043F2E);
  // controller
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: true,
        forceMaterialTransparency: true,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: ListView(
          scrollDirection: Axis.vertical,
          children: [
            const SizedBox(height: 20),
            BigTitleText(text: 'Log into your account'),
            const SizedBox(height: 30),
            InputField(
              controller: emailController,
              placeHolder: 'Enter your email',
            ),
            const SizedBox(height: 20),
            InputField(
              controller: passwordController,
              placeHolder: 'Enter your password',
            ),
            const SizedBox(height: 5),
            GestureDetector(
              child: Text(
                'forgot your password?',
                textAlign: TextAlign.right,
                style: TextStyle(color: Colors.grey.shade600, fontSize: 12),
              ),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const ForgotPasswordScreen(),
                  ),
                );
              },
            ),
            const SizedBox(height: 50),
            //login buttton
            MainButton(onTap: () {}, text: 'Login'),
            const SizedBox(height: 10),
            Text(
              'or continue with',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.grey.shade600, fontSize: 14),
            ),
            const SizedBox(height: 40),
            //sign in with google
            MainButtonWithIcon(
              onTap: () {},
              text: 'Google',
              icon: Icons.gamepad_outlined,
              backgroundColor: Colors.grey.shade300,
              textColor: Colors.black,
            ),
            // sign up with apple
            const SizedBox(height: 20),
            MainButtonWithIcon(
              onTap: () {},
              text: 'Apple',
              icon: Icons.import_contacts,
              backgroundColor: Colors.black,
              textColor: Colors.white,
            ),
            // dont have an account
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              spacing: 2,
              children: [
                Text(
                  "Don't have an account?",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight(400),
                    fontSize: 16,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => SignUpScreen()),
                    );
                  },
                  child: Text(
                    'Sign up',
                    style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight(600),
                      fontSize: 16,
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
