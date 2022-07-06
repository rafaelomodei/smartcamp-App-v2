import 'package:flutter/material.dart';
import 'package:smartcamp/model/plant.dart';
import 'package:smartcamp/theme/colorSets.dart';

class CardSlectPlant extends StatefulWidget {
  bool isSelected;
  Plant plant;

  CardSlectPlant(
    this.plant, {
    Key? key,
    required this.isSelected,
  }) : super(key: key);

  @override
  State<CardSlectPlant> createState() => _CardSlectPlantState();
}

class _CardSlectPlantState extends State<CardSlectPlant> {
  final LinearGradient isSelectedBackground = LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      colors: [
        Color.fromRGBO(245, 250, 247, 1.0),
        Color.fromRGBO(240, 240, 240, 1.0)
      ]);

  final LinearGradient notSelectedBackground = LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      colors: [colorGreenSegundary, colorGreenSegundary]);

  @override
  Widget build(BuildContext context) {
    handleDecoration() {
      if (widget.isSelected) {
        return BoxDecoration(
          border: Border.all(color: Theme.of(context).colorScheme.primary),
          borderRadius: BorderRadius.all(Radius.circular(20.0)),
          color: colorGreenSegundary,
        );
      }
      return BoxDecoration(
        border: Border.all(color: Colors.transparent),
      );
    }

    return Container(
      decoration: handleDecoration(),
      padding: EdgeInsets.all(16),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.all(16),
            child: Image.asset(
              widget.plant.photo,
              width: 40,
              alignment: Alignment.center,
            ),
          ),
          Text(
            widget.plant.name,
            style: Theme.of(context).textTheme.subtitle2,
          ),
        ],
      ),
    );
  }
}
