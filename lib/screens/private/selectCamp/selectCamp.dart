import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:smartcamp/components/atoms/button/button.dart';
import 'package:smartcamp/components/molecules/card/card.dart';
import 'package:smartcamp/components/molecules/cardSelectCamp/cardSelectCamp.dart';
import 'package:smartcamp/components/molecules/cardSelectPlant/cardSelectPlant.dart';
import 'package:smartcamp/configuration/blocs/configBloc.dart';
import 'package:smartcamp/configuration/events/configEvents.dart';
import 'package:smartcamp/configuration/states/configState.dart';
import 'package:smartcamp/model/domain/entities/campEntity.dart';
import 'package:smartcamp/model/metodoAntigo/camp.dart';
import 'package:smartcamp/model/metodoAntigo/plant.dart';
import 'package:smartcamp/model/metodoAntigo/planting.dart';
import 'package:smartcamp/model/metodoAntigo/sensors.dart';
import 'package:smartcamp/screens/private/createCamp/createCamp.dart';
import 'package:smartcamp/screens/private/home/home.dart';

class SelectCamp extends StatefulWidget {
  SelectCamp({Key? key}) : super(key: key);

  @override
  State<SelectCamp> createState() => _SelectCampState();
}

class _SelectCampState extends State<SelectCamp> with CompleteStateMixin {
  @override
  void completeState() {
    context.read<ConfigBloc>().add(FetchCamps());
  }

  final inputNameCampController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final bloc = context.watch<ConfigBloc>();
    final state = bloc.state;

    return Scaffold(
      floatingActionButton: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 24.0),
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.background,
        ),
        // child:
        child: Container(
          width: double.infinity,
          height: 56,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              textStyle: const TextStyle(fontSize: 13.0),
              padding: const EdgeInsets.all(8.0),
              elevation: 0.0,
              primary: Theme.of(context).colorScheme.primary,
              onPrimary: Theme.of(context).colorScheme.onPrimary,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16.0),
              ),
              shadowColor: Colors.transparent,
            ),
            onPressed: () => {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => CreateCamp(),
                  )),
            },
            child: const Text('Criar novo campo'),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
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
        child: CustomScrollView(slivers: [
          SliverList(
            delegate: SliverChildListDelegate(
              <Widget>[
                Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 40, 0, 40),
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
                            'Em qual campo você deseja plantar ?',
                            textAlign: TextAlign.left,
                            style: Theme.of(context).textTheme.bodyText1,
                          ),
                        ),
                      ],
                    )),
              ],
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              <Widget>[
                if (state is LoadedConfigState)
                  ListView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: state.camps.length,
                    itemBuilder: (context, idnex) {
                      final camp = state.camps[idnex];
                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 24.0),
                        child: CardSlectCamp(camp),
                      );
                    },
                  ),
              ],
            ),
          ),
        ]),
      ),
    );
  }

  String _validateInputPhone({String value = ''}) {
    return value.length != 9 ? 'aasd' : '';
  }

  _createPlanting(context, CampEntity camp) {
    Plant plantMilho = Plant('Milho', 'photo', new DateTime(2022));
    Sensors sensors = Sensors(false, true, false, 0, 0, 2, 3, 7, 0);

    Planting planting = Planting(plantMilho, sensors);

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

mixin CompleteStateMixin<T extends StatefulWidget> on State<T> {
  void completeState();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance?.addPostFrameCallback((timeStamp) {
      completeState();
    });
  }
}

class CustomWidget extends StatelessWidget {
  CustomWidget(this._index) {
    debugPrint('initialize: $_index');
  }

  final int _index;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      color: (_index % 2 != 0) ? Colors.white : Colors.grey,
      child:
          Center(child: Text('index: $_index', style: TextStyle(fontSize: 40))),
    );
  }
}
