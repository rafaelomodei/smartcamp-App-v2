import 'package:flutter/material.dart';
import 'package:smartcamp/model/camp.dart';
import 'package:smartcamp/screens/private/selectPlant/selectPlant.dart';
import 'package:smartcamp/theme/colorSets.dart';

class CardSlectCamp extends StatefulWidget {
  Camp camp;

  CardSlectCamp(this.camp, {Key? key}) : super(key: key);

  @override
  State<CardSlectCamp> createState() => _CardSlectCampState();
}

class _CardSlectCampState extends State<CardSlectCamp> {
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
              ])),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          textStyle: const TextStyle(fontSize: 13.0),
          padding: const EdgeInsets.all(8.0),
          elevation: 0.0,
          primary: Colors.transparent,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16.0),
          ),
          shadowColor: Colors.transparent,
        ),
        child: Row(children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Text(
              widget.camp.getName,
              style: Theme.of(context).textTheme.subtitle2,
            ),
          ),
        ]),
        onPressed: () => {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return SelectPlant(
                  camp: widget.camp,
                );
              },
            ),
          ),
        },
      ),
    );
  }
}
