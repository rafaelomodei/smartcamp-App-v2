import 'package:flutter/material.dart';

class TextTitle extends StatefulWidget {
  String text = '';

  TextTitle(this.text, {Key? key}) : super(key: key);

  @override
  State<TextTitle> createState() => _TextTitle();
}

class _TextTitle extends State<TextTitle> {
  @override
  Widget build(BuildContext context) {
    return Text(widget.text);
  }
}
