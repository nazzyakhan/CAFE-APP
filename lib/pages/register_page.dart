import 'package:flutter/material.dart';
import 'package:junkfoodiez/components/my_button.dart';
import 'package:junkfoodiez/components/my_textfield.dart';

class RegisterPage extends StatefulWidget {
  RegisterPage({super.key, required this.onTap});

  final void Function()? onTap;

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final TextEditingController emailController = TextEditingController();

  final TextEditingController passwordController = TextEditingController();

  final TextEditingController confirmPasswordController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).colorScheme.surface,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //logo

              Icon(Icons.lock_open_rounded,
                  size: 100,
                  color: Theme.of(context).colorScheme.inversePrimary),
              const SizedBox(height: 20),

              //app slogan
              Text("Let's Create an Account",
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.inversePrimary,
                    fontSize: 16,
                  )),

              const SizedBox(height: 20),

              //email textfield
              MyTextField(
                  controller: emailController,
                  hintText: "Enter email",
                  obscureText: false),

              const SizedBox(height: 10),

              //password textfield
              MyTextField(
                  controller: passwordController,
                  hintText: "Enter password",
                  obscureText: true),
              const SizedBox(height: 10),

              //password textfield
              MyTextField(
                  controller: confirmPasswordController,
                  hintText: "Confirm password",
                  obscureText: true),
              const SizedBox(height: 10),
              //sign in \
              MyButton(text: "Sign Up", onTap: () {}),
              //already have an account?
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Already have an account?",
                      style: TextStyle(
                          color: Theme.of(context).colorScheme.inversePrimary)),
                  const SizedBox(width: 4),
                  GestureDetector(
                    onTap: widget.onTap,
                    child: Text(
                      "Login now",
                      style: TextStyle(
                          color: Theme.of(context).colorScheme.inversePrimary,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              )
            ],
          ),
        ));
  }
}
