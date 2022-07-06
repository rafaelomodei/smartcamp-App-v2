import 'package:flutter/material.dart';

class TaggleExample extends StatefulWidget {
  final List<String> listOptions = ['A', 'B', 'C'];

  TaggleExample({Key? key}) : super(key: key);

  @override
  State<TaggleExample> createState() => _TaggleExampleSate();
}

class _TaggleExampleSate extends State<TaggleExample> {
  List<bool> listIsSelected = [true, false, false];

  @override
  Widget build(BuildContext context) {
    return ToggleButtons(
      direction: Axis.vertical,
      children: List<Widget>.generate(
        widget.listOptions.length,
        (int index) {
          return Text(
            widget.listOptions[index],
          );
        },
      ),
      onPressed: (int index) {
        _handleSelectCamp(index);
      },
      isSelected: listIsSelected,
    );
  }

  _handleSelectCamp(int index) {
    setState(() {
      for (int buttonIndex = 0;
          buttonIndex < listIsSelected.length;
          buttonIndex++) {
        if (buttonIndex == index) {
          listIsSelected[buttonIndex] = !listIsSelected[buttonIndex];
        } else {
          listIsSelected[buttonIndex] = false;
        }
      }
    });
  }
}
