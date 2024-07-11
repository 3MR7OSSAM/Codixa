import 'package:flutter/material.dart';

class EditButton extends StatelessWidget {
  const EditButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.blueAccent,
      ),
      onPressed: () {},
      child: const Padding(
        padding: EdgeInsets.all(8.0),
        child: Text('Edit',style: TextStyle(color: Colors.white),),
      ),
    );
  }
}
