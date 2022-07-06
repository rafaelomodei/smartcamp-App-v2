import 'package:flutter/material.dart';
import 'package:smartcamp/model/plant.dart';

class ListPlant extends ChangeNotifier {
  final List<Plant> _listPlant = [];

  List<Plant> get listPlant => _listPlant;

  void addPlant(Plant plant) {
    _listPlant.add(plant);

    notifyListeners();
  }

  @override
  String toString() {
    return listPlant.toString();
  }
}
