import 'package:flutter/material.dart';
import 'package:smartcamp/model/camp.dart';

class ButtonCamp extends StatelessWidget {
  Camp camp;

  ButtonCamp(this.camp, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        textStyle: const TextStyle(fontSize: 13.0),
        padding: const EdgeInsets.all(8.0),
        elevation: 0.0,
        primary: Theme.of(context).colorScheme.primary,
        onPrimary: Theme.of(context).colorScheme.onPrimary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
        shadowColor: Colors.transparent,
      ),
      onPressed: () {},
      child: Text(camp.getName),
    );
  }
}
