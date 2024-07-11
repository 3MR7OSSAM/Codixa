import 'package:flutter/material.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        width: 300,
        child: TextFormField(
          style: const TextStyle(color: Colors.white),
          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                width: 1,
                color: Colors.grey.withOpacity(0.3),
              ),
              borderRadius: BorderRadius.circular(50.0),
            ),
            prefixIcon: const Padding(
              padding: EdgeInsets.only(left: 15.0,right: 15),
              child: Icon(Icons.search, color: Colors.grey ,size: 25,),
            ),
            hintText: 'Search',

            hintStyle: const TextStyle(color: Colors.grey),
            filled: true,
            fillColor: const Color(0xff091e3a),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(50.0),
              borderSide: BorderSide.none,
            ),
            contentPadding:
            const EdgeInsets.symmetric(vertical: 15.0, horizontal: 20.0),
          ),
          keyboardType: TextInputType.emailAddress,
          textInputAction: TextInputAction.done,
        ),
      ),
    );
  }
}
