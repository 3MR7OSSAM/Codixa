import 'package:flutter/material.dart';

import '../../../GlobalWidgets/CustomFormField.dart';

class RegisterWidget extends StatefulWidget {
  const RegisterWidget({super.key, this.onTap});
  final void Function()? onTap;

  @override
  State<RegisterWidget> createState() => _RegisterWidgetState();
}

class _RegisterWidgetState extends State<RegisterWidget> {
  final TextEditingController _mailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController = TextEditingController();
  bool obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Register',
                  style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      icon: Image.asset('Assets/icons/Google.png',width: 30,),
                      iconSize: 40,
                      onPressed: () {},
                    ),
                    const SizedBox(width: 16),
                    IconButton(
                      icon: Image.asset('Assets/icons/Apple.png',width: 30,),
                      iconSize: 40,
                      onPressed: () {},
                    ),
                    const SizedBox(width: 16),
                    IconButton(
                      icon: Image.asset('Assets/icons/Facebook.png',width: 30,),
                      iconSize: 40,
                      onPressed: () {},
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                const Text('-Or register via email-'),
                const SizedBox(height: 16),
                SizedBox(
                    width: 500,
                    child: CustomFormField(controller: _mailController, onChanged: (String value) {}, hintText: '', obscureText: false, label: 'Email',)),
            
                const SizedBox(height: 16),
                SizedBox(
                    width: 500,
                    child: CustomFormField(controller: _passwordController, onChanged: (String value) {}, hintText: '', obscureText: true, label: 'Password',)),
            
                const SizedBox(height: 16),
                SizedBox(
                    width: 500,
                    child: CustomFormField(controller: _confirmPasswordController, onChanged: (String value) {}, hintText: '', obscureText: true, label: 'Confirm Password',)),
                const SizedBox(height: 16),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      surfaceTintColor: Colors.blue
                  ),
                  onPressed: () {},
                  child: const Text('Register', style: TextStyle(color: Colors.white),),
                ),
                const SizedBox(height: 16),
                TextButton(
                  onPressed: widget.onTap,
                  child: const Text('Already have an account? Log in', style: TextStyle(color: Colors.blue),),
                ),
              ],
            ),
          ),
        ));
  }
}
