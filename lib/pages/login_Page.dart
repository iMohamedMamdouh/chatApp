import 'package:chat_app/auth/auth_service.dart';
import 'package:chat_app/components/my_Textfield.dart';
import 'package:chat_app/components/my_button.dart';
import 'package:flutter/material.dart';

class loginPage extends StatelessWidget {
  //email and password controllers
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _pwController = TextEditingController();
  //tap to register
  final void Function()? onTap;

  loginPage({super.key, required this.onTap});

  //login method
  void login(BuildContext context) async {
    // auth service
    final authService = AuthService();

    // login
    try {
      await authService.signIn(
        _emailController.text.trim(),
        _pwController.text.trim(),
      );
    }
    // catch error
    catch (e) {
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Text(e.toString()),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //logo
            const Icon(
              Icons.lock,
              size: 100,
              color: Color(0xFF240102),
            ),
            const SizedBox(
              height: 50,
            ),

            //welcome back massage
            Text(
              "welcome back , you've been missed!",
              style: TextStyle(
                color: Theme.of(context).colorScheme.primary,
                fontSize: 16,
              ),
            ),

            const SizedBox(height: 25),

            //email textfield
            MyTextField(
              hintText: "Email",
              obscureText: false,
              controller: _emailController,
            ),

            const SizedBox(height: 20),

            //pwd textfield

            MyTextField(
              hintText: "Password",
              obscureText: true,
              controller: _pwController,
            ),

            const SizedBox(height: 25),

            //login button
            MyButton(
              text: "login",
              onTap: () => login(context),
            ),

            const SizedBox(height: 25),

            //register button
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Not a member?",
                  style:
                      TextStyle(color: Theme.of(context).colorScheme.primary),
                ),
                GestureDetector(
                  onTap: onTap,
                  child: Text(
                    "register now",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context).colorScheme.primary),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
