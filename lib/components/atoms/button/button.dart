import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  String label = '';
  // Color color = const Color.fromRGBO(240, 240, 240, 1.0);

  Button(this.label, {Key? key}) : super(key: key);

  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 56,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          textStyle: TextStyle(fontSize: 13.0),
          padding: const EdgeInsets.all(8.0),
          elevation: 0.0,
          primary: Theme.of(context).colorScheme.primary,
          onPrimary: Theme.of(context).colorScheme.onPrimary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16.0),
          ),
          shadowColor: Colors.transparent,
        ),
        onPressed: () {},
        child: Text(label),
      ),
    );
  }
}
