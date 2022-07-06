import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Input extends StatelessWidget {
  TextEditingController inputController = TextEditingController();
  String hintText = '';
  String regExp;
  int maxLength;
  Input(this.hintText, {this.maxLength: 20, this.regExp: '', Key? key})
      : super(key: key);

  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: TextFormField(
        controller: inputController,
        enableSuggestions: false,
        textAlign: TextAlign.center,
        maxLength: maxLength,
        inputFormatters: <TextInputFormatter>[
          FilteringTextInputFormatter.allow(RegExp(regExp)),
        ],
        decoration: InputDecoration(
          hintText: hintText,
          counterText: '',
        ),
      ),
    );
    // Fill this out in the next step.
  }
}


// class Input extends StatefulWidget {
//   TextEditingController inputController = TextEditingController();

//   Input({Key? key}) : super(key: key);

//   @override
//   _InputState createState() => _InputState();
// }

// class _InputState extends State<Input> {
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(horizontal: 8),
//       child: TextFormField(
//         controller: widget.inputController,
//         enableSuggestions: false,
//         textAlign: TextAlign.center,
//         decoration: const InputDecoration(
//           hintText: '',
//           counterText: '',
//         ),
//       ),
//     );
//     // Fill this out in the next step.
//   }
// }

