import 'package:flutter/material.dart';

class ContainerGLobal extends StatefulWidget {
  final Widget child;

  ContainerGLobal(this.child, {Key? key}) : super(key: key);

  @override
  _ContainerGLobalState createState() => _ContainerGLobalState();
}

class _ContainerGLobalState extends State<ContainerGLobal> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Center(
        heightFactor: double.infinity,
        child: Container(
            width: 500.0, height: double.infinity, child: widget.child),
      ),
    );
  }
}
