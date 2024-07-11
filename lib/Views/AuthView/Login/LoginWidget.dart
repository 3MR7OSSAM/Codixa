import 'package:flutter/material.dart';

import '../../../GlobalWidgets/CustomFormField.dart';

class LoginWidget extends StatefulWidget {
  const LoginWidget({super.key, this.onTap});
  final void Function()? onTap;

  @override
  State<LoginWidget> createState() => _LoginWidgetState();
}

class _LoginWidgetState extends State<LoginWidget> {
  final TextEditingController _mailController = TextEditingController();
  final TextEditingController _password = TextEditingController();
  bool obscureText = false;
  @override
  Widget build(BuildContext context) {
    return  Center(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Log in',
                style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 32),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    icon: Image.asset('Assets/icons/Google.png',width: 30,), // replace with local asset if preferred
                    iconSize: 40,
                    onPressed: () {},
                  ),
                  const SizedBox(width: 16),
                  IconButton(
                    icon: Image.asset('Assets/icons/Apple.png',width: 30,), // replace with local asset if preferred
                    iconSize: 40,
                    onPressed: () {},
                  ),
                  const SizedBox(width: 16),
                  IconButton(
                    icon: Image.asset('Assets/icons/Facebook.png',width: 30,), // replace with local asset if preferred
                    iconSize: 40,
                    onPressed: () {},
                  ),
                ],
              ),
              const SizedBox(height: 16),
              const Text('-Or log in via email-'),
              const SizedBox(height: 16),
              SizedBox(
                  width: 500,
                  child: CustomFormField(controller: _mailController, onChanged: (String value) {  }, hintText: '', obscureText: false, label: 'Email',)),

              const SizedBox(height: 16),
              SizedBox(
                  width: 500,
                  child: CustomFormField(controller: _password, onChanged: (String value) {  }, hintText: '', obscureText: true, label: 'Password',)),
              const SizedBox(height: 16),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  surfaceTintColor: Colors.blue
                ),
                onPressed: (){},
                child: const Text('Create Account',style: TextStyle(color: Colors.white),),
              ),
              const SizedBox(height: 16),
              TextButton(
                onPressed: widget.onTap,
                child: const Text('New Here? Create Account',style: TextStyle(color: Colors.blue),),
              ),
            ],
          ),
    ));
  }
}