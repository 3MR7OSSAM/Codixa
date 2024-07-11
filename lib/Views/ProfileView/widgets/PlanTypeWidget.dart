import 'package:flutter/material.dart';

class PlanTypeWidget extends StatelessWidget {
  const PlanTypeWidget({
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
          labelText: 'Plane',
          labelStyle: const TextStyle(color: Colors.black),
          hintText: 'Plane',
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
        items: ['Basic', 'Premium'].map((String value) {
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
