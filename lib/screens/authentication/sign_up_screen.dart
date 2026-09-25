import 'package:animal_smile/utils/big_title_text.dart';
import 'package:animal_smile/utils/input_field.dart';
import 'package:animal_smile/utils/main_button.dart';
import 'package:animal_smile/utils/main_button_with_icon.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  // my controlers
  TextEditingController createPhoneController = TextEditingController();
  TextEditingController createEmailController = TextEditingController();
  TextEditingController createPasswordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        forceMaterialTransparency: true,
        automaticallyImplyLeading: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: ListView(
          children: [
            BigTitleText(text: 'Create an account'),
            const SizedBox(height: 20),
            InputField(
              controller: createEmailController,
              placeHolder: 'Enter your email',
            ),
            const SizedBox(height: 20),
            InputField(
              controller: createPhoneController,
              placeHolder: 'Enter your phone number',
            ),
            const SizedBox(height: 20),
            InputField(
              controller: createPasswordController,
              placeHolder: 'Enter password',
            ),
            const SizedBox(height: 20),
            InputField(
              controller: createPasswordController,
              placeHolder: 'Confirm your password',
            ),
            const SizedBox(height: 40),
            MainButton(text: 'Sign up', onTap: () {}),
            const SizedBox(height: 5),
            Text(
              'or continue with',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight(500),
                color: Colors.grey.shade600,
              ),
            ),
            const SizedBox(height: 20),
            MainButtonWithIcon(
              onTap: () {},
              text: 'Google',
              icon: Icons.abc_outlined,
              backgroundColor: Colors.grey.shade100,
              textColor: Colors.black,
            ),
            const SizedBox(height: 10),
            MainButtonWithIcon(
              onTap: () {},
              text: 'Apple',
              icon: Icons.import_contacts,
              backgroundColor: Colors.black,
              textColor: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
