import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:smartcamp/components/organism/containerGlobal/containerGlobal.dart';
import 'package:smartcamp/configuration/blocs/configBloc.dart';
import 'package:smartcamp/configuration/events/configEvents.dart';
import 'package:smartcamp/model/domain/entities/campsEntities.dart';
import 'package:smartcamp/model/domain/entities/plantEntities.dart';
import 'package:smartcamp/model/domain/entities/plantingEntitie.dart';
import 'package:smartcamp/model/domain/entities/sensorsEntitie.dart';
import 'package:smartcamp/model/metodoAntigo/camp.dart';
import 'package:smartcamp/model/metodoAntigo/listCamp.dart';
import 'package:smartcamp/screens/private/selectPlant/selectPlant.dart';
import 'package:smartcamp/utils/const.dart';

class CreateCamp extends StatefulWidget {
  final String img = 'assets/img/png/emojiHappy.png';

  const CreateCamp({Key? key}) : super(key: key);

  @override
  State<CreateCamp> createState() => _CreateCampState();
}

class _CreateCampState extends State<CreateCamp> {
  final inputNameCampController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  // @override
  // void initState() {
  //   super.initState();

  //   WidgetsBinding.instance?.addPostFrameCallback((_) {
  //     context.read<ConfigBloc>().add(FetchCamps());
  //   });
  // }

  // @override
  // void initState() {
  //   db.collection(collectionCamp).snapshots().listen((query) {
  //     List camps = [];

  //     query.docs.forEach((doc) {
  //       setState(() {
  //         camps.add(doc);
  //       });
  //     });
  //   });

  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
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
      body: ContainerGLobal(
        ListView(
          children: <Widget>[
            Center(
              child: Container(
                width: 500,
                child: Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      // Padding(
                      //   padding: const EdgeInsets.symmetric(vertical: 40),
                      //   child: Image.asset(img),
                      // ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 40),
                        child: Column(children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 24),
                            child: Image.asset(widget.img, scale: 3),
                          ),
                          Text(
                            'Criar campo',
                            textAlign: TextAlign.center,
                            style: Theme.of(context).textTheme.headline3,
                          ),
                          Text(
                            'Vamos preparar o campo\npara o plantio',
                            textAlign: TextAlign.center,
                            style: Theme.of(context).textTheme.bodyText1,
                          ),
                        ]),
                      ),
                      TextFormField(
                        controller: inputNameCampController,
                        textAlign: TextAlign.center,
                        decoration: const InputDecoration(
                          border: UnderlineInputBorder(),
                          hintText: 'Nome do campo',
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 40),
                        child: ElevatedButton(
                            onPressed: () => _createCamp(context),
                            child: const Text('Confirmar')),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  _createCamp(context) {
    final String name = inputNameCampController.text;
    // createCamp();
    if (_validateInputName(name) != null) {
      const PlantEntities newPlant =
          PlantEntities(id: 'newPlant', name: 'Café', photo: 'url');
      const SensorsEntities newSensors = SensorsEntities(
          id: 'newSensors',
          irrigation: true,
          isActiveSensors: true,
          greenhouseCover: false,
          airHumidity: 1.0,
          environmentTemperature: 2.0,
          electricConductivity: 2.5,
          waterTemperature: 3.5,
          waterOxygenLevel: 2.2,
          waterPH: 2.1);
      const PlantingEntities newPlanting = PlantingEntities(
        id: 'newPlantingEntitie',
        plant: newPlant,
        sensors: newSensors,
        initialPlantingDate: '1969-07-20 20:18:04Z',
      );

      final CampEntities newCamp = CampEntities(
        id: 'aaa',
        name: name,
        planting: [newPlanting],
      );
      _uptdateListCamp(context, newCamp);
      Navigator.pop(context);

      // Navigator.push(
      //     context,
      //     MaterialPageRoute(
      //       builder: (_) => SelectPlant(camp: Camp(name)),
      //     ));
    }
  }

  _validateInputName(value) {
    return value != null ? value : null;
  }

  _uptdateListCamp(context, CampEntities camp) {
    print('Criando um novo campo \n\n');

    // Provider.of<ListCamp>(context, listen: false).addCamp(camp);
    // context.read<ConfigBloc>().add(AddNewCampEvent(camp));
  }

  // void createCamp() {
  //   db
  //       .collection(collectionCamp)
  //       .doc()
  //       .set({"name": inputNameCampController.text});
  // }
}
