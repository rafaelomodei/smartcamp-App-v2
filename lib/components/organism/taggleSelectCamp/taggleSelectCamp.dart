import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:smartcamp/components/molecules/cardSelectCamp/cardSelectCamp.dart';
import 'package:smartcamp/components/molecules/cardSelectPlant/cardSelectPlant.dart';
import 'package:smartcamp/model/camp.dart';
import 'package:smartcamp/model/listCamp.dart';
import 'package:smartcamp/model/plant.dart';
import 'package:smartcamp/theme/colorSets.dart';

class TaggleSlectCamp extends StatefulWidget {
  List<Camp> listCamp;

  TaggleSlectCamp(this.listCamp, {Key? key}) : super(key: key);

  @override
  State<TaggleSlectCamp> createState() => _TaggleSlectCampSate();
}

class _TaggleSlectCampSate extends State<TaggleSlectCamp> {
  String title = 'Maracujá';
  String image = 'assets/img/png/maracuja.png';

  List<bool> isSelected = [];

  @override
  void initState() {
    super.initState();
    for (int tamanho = 0; tamanho <= widget.listCamp.length; tamanho++) {
      isSelected.add(false);
    }
  }

  @override
  Widget build(BuildContext context) {
    print('ToggleCamp::isSelected: ${isSelected}');

    return ToggleButtons(
      direction: Axis.vertical,
      borderColor: Colors.transparent,
      selectedBorderColor: Colors.transparent,
      color: Colors.transparent,
      fillColor: Colors.transparent,
      borderRadius: const BorderRadius.all(Radius.circular(20)),
      highlightColor: Colors.transparent,
      renderBorder: false,
      children: [
        SliverList(
          delegate: SliverChildListDelegate(
            List.generate(
              2,
              (index) => Text('item ${index}`'),
            ),
          ),
        ),
      ],

      // List<Widget>.generate(
      //   widget.listCamp.length,
      //   (int index) {
      //     return CardSlectCamp(
      //       widget.listCamp[index],
      //       isSelected: isSelected[index],
      //     );
      //   },
      // ),
      onPressed: (int index) {
        _handleSelectCamp(index);
      },
      isSelected: isSelected,
    );
  }

  _handleSelectCamp(int index) {
    print('Tamanho da lista: ${isSelected.length}');

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
