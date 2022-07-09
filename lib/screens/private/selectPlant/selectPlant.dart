import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:smartcamp/components/atoms/button/button.dart';
import 'package:smartcamp/components/molecules/card/card.dart';
import 'package:smartcamp/components/molecules/cardSelectPlant/cardSelectPlant.dart';
import 'package:smartcamp/components/organism/containerGlobal/containerGlobal.dart';
import 'package:smartcamp/components/organism/taggleSelectPlant/taggleSelectPlant.dart';
import 'package:smartcamp/model/domain/entities/campEntity.dart';
import 'package:smartcamp/model/metodoAntigo/camp.dart';
import 'package:smartcamp/model/metodoAntigo/listCamp.dart';
import 'package:smartcamp/model/metodoAntigo/listPlants.dart';
import 'package:smartcamp/model/metodoAntigo/plant.dart';
import 'package:smartcamp/model/metodoAntigo/planting.dart';
import 'package:smartcamp/model/metodoAntigo/sensors.dart';
import 'package:smartcamp/screens/private/home/home.dart';

class SelectPlant extends StatefulWidget {
  CampEntity camp;

  SelectPlant({Key? key, required this.camp}) : super(key: key);

  @override
  _SelectPlantState createState() => _SelectPlantState();
}

class _SelectPlantState extends State<SelectPlant> {
  final inputNameCampController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  String img = 'assets/img/png/emojiHappy.png';

  List<Plant> listPlants = [
    Plant('Maracujá', 'assets/img/png/maracuja.png', new DateTime(2022)),
    Plant('Maracujá roxo', 'assets/img/png/maracuja.png', new DateTime(2022)),
    Plant('Milho', 'assets/img/png/maracuja.png', new DateTime(2022)),
    Plant('Tomate', 'assets/img/png/maracuja.png', new DateTime(2022)),
    Plant('Alface', 'assets/img/png/maracuja.png', new DateTime(2022)),
    Plant('Couve', 'assets/img/png/maracuja.png', new DateTime(2022)),
    Plant('Beterraba', 'assets/img/png/maracuja.png', new DateTime(2022)),
  ];

  @override
  Widget build(BuildContext context) {
    bool isMobile = MediaQuery.of(context).size.shortestSide < 576;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios_new_rounded,
            color: Theme.of(context).colorScheme.secondary,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        elevation: 0.0,
        // backgroundColor: Colors.transparent,
      ),
      body: SafeArea(
        top: true,
        bottom: true,
        child: CustomScrollView(
          slivers: [
            SliverList(
              delegate: SliverChildListDelegate(
                <Widget>[
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 0, 0, 40),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'É hora',
                                textAlign: TextAlign.left,
                                style: Theme.of(context).textTheme.headline4,
                              ),
                              Text(
                                'de plantar!',
                                style: Theme.of(context).textTheme.headline3,
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 0, 0, 24),
                          child: Text(
                            'Quais plantas você deseja plantar no campo ${widget.camp.name}?',
                            textAlign: TextAlign.left,
                            style: Theme.of(context).textTheme.bodyText1,
                          ),
                        ),

                        // shrinkWrap: true,
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SliverList(
              delegate: SliverChildListDelegate(
                List.generate(
                  listPlants.length,
                  (index) => Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24.0),
                    child: InkWell(
                      child: CardItem(
                          name: listPlants[index].name,
                          photo: listPlants[index].photo),
                      onTap: () =>
                          _createPlanting(widget.camp, listPlants[index]),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  String _validateInputPhone({String value = ''}) {
    return value.length != 9 ? 'aasd' : '';
  }

  _createPlanting(CampEntity camp, Plant plant) {
    Sensors sensors = Sensors(false, true, false, 0, 0, 2, 3, 7, 0);

    Planting planting = Planting(plant, sensors);

    print(planting);
    // camp.addPlant(planting);

    // Provider.of<ListCamp>(context, listen: false).addPlant(plantMilho);

    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (_) => Home(),
        ));
  }
}
