import 'package:flutter/material.dart';
import 'package:smartcamp/components/molecules/cardSelectPlant/cardSelectPlant.dart';
import 'package:smartcamp/model/metodoAntigo/camp.dart';
import 'package:smartcamp/model/metodoAntigo/plant.dart';
import 'package:smartcamp/theme/colorSets.dart';

class TaggleSlectPlant extends StatefulWidget {
  TaggleSlectPlant({Key? key}) : super(key: key);

  @override
  State<TaggleSlectPlant> createState() => _TaggleSlectPlantSate();
}

class _TaggleSlectPlantSate extends State<TaggleSlectPlant> {
  String title = 'Maracujá';
  String image = 'assets/img/png/maracuja.png';

  List<bool> isSelected = [
    true,
    false,
    false,
    false,
  ];

  List<Plant> listPlants = [
    Plant('Maracujá', 'assets/img/png/maracuja.png', new DateTime(2022)),
    Plant('Maracujá roxo', 'assets/img/png/maracuja.png', new DateTime(2022)),
    Plant('Milho', 'assets/img/png/maracuja.png', new DateTime(2022)),
    Plant('Tomate', 'assets/img/png/maracuja.png', new DateTime(2022)),
  ];

  @override
  Widget build(BuildContext context) {
    return ToggleButtons(
      direction: Axis.vertical,
      borderColor: Colors.transparent,
      selectedBorderColor: Colors.transparent,
      color: Colors.transparent,
      fillColor: Colors.transparent,
      borderRadius: const BorderRadius.all(Radius.circular(20)),
      highlightColor: Colors.transparent,
      renderBorder: false,
      children: List<Widget>.generate(
        isSelected.length,
        (int index) {
          return CardSlectPlant(
            listPlants[index],
            isSelected: isSelected[index],
          );
        },
      ),
      onPressed: (int index) {
        _handleSelectPlant(index);
      },
      isSelected: isSelected,
    );
  }

  _handleSelectPlant(int index) {
    setState(() {
      for (int buttonIndex = 0;
          buttonIndex < isSelected.length;
          buttonIndex++) {
        if (buttonIndex == index) {
          isSelected[buttonIndex] = !isSelected[buttonIndex];
        } else {
          isSelected[buttonIndex] = false;
        }
      }
    });
  }
}
