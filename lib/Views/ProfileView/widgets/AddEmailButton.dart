import 'package:flutter/material.dart';

class AddEmailButton extends StatelessWidget {
  const AddEmailButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        backgroundColor: const Color(0xff115bbf).withOpacity(0.1),
        surfaceTintColor: Colors.white,
        shadowColor: Colors.transparent,

      ),
      onPressed: () {},
      child: const Text('+ Add Email Address',style: TextStyle(color:Color(0xff115bbf)),),
    );
  }
}
