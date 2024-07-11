import 'package:codixa/GlobalWidgets/CustomButton.dart';
import 'package:flutter/material.dart';

import '../../../GlobalWidgets/FooterTitlesWidget.dart';

class FooterSection extends StatelessWidget {
  const FooterSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    double width = size.width;
    double height = size.height;
    return Container(
      width: width,
      height: height / 2.7,
      decoration: const BoxDecoration(color: Colors.black),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            children: [
              Image.asset(
                'Assets/images/AppLogo.png',
                width: 200,
              ),
              const Text(
                '      Do you want the latest news\n     and updates? Subscribe Now.',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    EmailFormField(),
                    const SizedBox(
                      width: 30,
                    ),
                    CustomButton(
                        width: width * 0.09,
                        height: 40,
                        title: 'subscribe ',
                        fontSize: width * 0.01),
                  ],
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 100, vertical: 20),
                child: Divider(
                    height: 3,
                    thickness: 0.5,
                    color: Colors.grey.withOpacity(0.3)),
              ),
            ],
          ),
          const FooterTitles()
        ],
      ),
    );
  }
}

class EmailFormField extends StatelessWidget {
  const EmailFormField({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300,
      child: TextFormField(
        style: const TextStyle(color: Colors.white),
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              width: 1,
              color: Colors.grey.withOpacity(0.3),
            ),
            borderRadius: BorderRadius.circular(10.0),
          ),
          prefixIcon: const Icon(Icons.person, color: Colors.white),
          hintText: 'Enter your email',
          hintStyle: const TextStyle(color: Colors.grey),
          filled: true,
          fillColor: Colors.black,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30.0),
            borderSide: BorderSide.none,
          ),
          contentPadding:
              const EdgeInsets.symmetric(vertical: 15.0, horizontal: 20.0),
        ),
        keyboardType: TextInputType.emailAddress,
        textInputAction: TextInputAction.done,
      ),
    );
  }
}
