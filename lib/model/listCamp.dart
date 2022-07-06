import 'package:flutter/material.dart';
import 'package:smartcamp/model/camp.dart';

class ListCamp extends ChangeNotifier {
  final List<Camp> _listCamp = [];

  List<Camp> get getListCamp => _listCamp;

  void addCamp(Camp camp) {
    _listCamp.add(camp);

    notifyListeners();
  }

  @override
  String toString() {
    return getListCamp.toString();
  }
}
