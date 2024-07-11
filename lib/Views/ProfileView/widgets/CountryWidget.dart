import 'package:flutter/material.dart';

class CountryWidget extends StatelessWidget {
  const CountryWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: DropdownButtonFormField<String>(
        decoration:  InputDecoration(
          disabledBorder: OutlineInputBorder(
            borderSide:  const BorderSide(
              width: 1,
              color:   Color(0xff115bbf),
            ),
            borderRadius: BorderRadius.circular(10.0),
          ),
          labelText: 'Country',
          labelStyle: const TextStyle(color: Colors.black),
          hintText: 'Country',
          hintStyle: const TextStyle(
            fontSize: 12,
            color:Color(0xff115bbf),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              width: 1,
              color:  Colors.grey,
            ),
            borderRadius: BorderRadius.circular(10.0),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              width: 1,
              color:Color(0xff115bbf),
            ),
            borderRadius: BorderRadius.circular(10.0),
          ),
          focusColor: const Color(0xff115bbf),
          errorBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              width: 1,
              color: Colors.red,
            ),
            borderRadius: BorderRadius.circular(10.0),
// Customize the error border color
          ),
        ),
        items: ['Egypt', 'USA', 'Canada'].map((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        }).toList(),
        onChanged: (_) {},
      ),
    );
  }
}
