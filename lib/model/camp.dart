import 'package:flutter/material.dart';

import './planting.dart';

class Camp extends ChangeNotifier {
  final String _name;
  final List<Planting> _listPlanting = [];

  Camp(this._name);

  String get getName => _name;
  List<Planting> get getListPlanting => _listPlanting;

  void addPlant(Planting planting) {
    _listPlanting.add(planting);

    notifyListeners();
  }
}
