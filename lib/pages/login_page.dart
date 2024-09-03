import 'package:flutter/material.dart';
import 'package:junkfoodiez/components/my_button.dart';
import 'package:junkfoodiez/components/my_textfield.dart';
import 'package:junkfoodiez/pages/home_page.dart';

class LoginPage extends StatefulWidget {
  LoginPage({super.key, required this.onTap});
  final void Function()? onTap;

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController emailController = TextEditingController();

  final TextEditingController passwordController = TextEditingController();

  //login method
  void login() {
    //TODO: add login method
    //TODO: navigate to home page
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => HomePage()));
  }

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
              Text("Hey Junk Foodies",
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
              //sign in \
              MyButton(text: "Sign In", onTap: login),
              //not a member? register now
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Not a member?",
                      style: TextStyle(
                          color: Theme.of(context).colorScheme.inversePrimary)),
                  const SizedBox(width: 4),
                  GestureDetector(
                    onTap: widget.onTap,
                    child: Text(
                      "Register now",
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
