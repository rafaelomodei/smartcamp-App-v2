import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:smartcamp/components/molecules/buttomCamp/buttomCamp.dart';
import 'package:smartcamp/model/metodoAntigo/listCamp.dart';

class Camps extends StatelessWidget {
  const Camps({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<ListCamp>(
      builder: (context, listCamps, child) {
        return Container(
          width: double.infinity,
          height: 40.0,
          child: ListView.separated(
            itemCount: listCamps.getListCamp.length,
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            separatorBuilder: (BuildContext context, int index) =>
                const Padding(
              padding: EdgeInsets.symmetric(vertical: 4.0),
              child: Text('   '),
            ),
            itemBuilder: (BuildContext context, int index) {
              return ButtonCamp(listCamps.getListCamp[index]);
            },
          ),
        );
      },
    );
  }
}
