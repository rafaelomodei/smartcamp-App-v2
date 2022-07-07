import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:smartcamp/model/metodoAntigo/plant.dart';

class CardItem extends StatelessWidget {
  final String name;
  final String? photo;

  const CardItem({Key? key, this.photo, required this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      margin: const EdgeInsets.symmetric(vertical: 4.0),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(20)),
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Color.fromRGBO(245, 250, 247, 1.0),
            Color.fromRGBO(240, 240, 240, 1)
          ],
        ),
      ),

      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          photo != null
              ? Image.asset(
                  photo.toString(),
                )
              : Container(),
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Text(
              name,
              style: Theme.of(context).textTheme.subtitle2,
            ),
          ),
        ],
      ),
      // onPressed: () => {}),
    );
  }
}
