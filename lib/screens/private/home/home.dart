import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:smartcamp/components/molecules/card/card.dart';
import 'package:smartcamp/configuration/blocs/configBloc.dart';
import 'package:smartcamp/configuration/events/configEvents.dart';
import 'package:smartcamp/configuration/states/configState.dart';
import 'package:smartcamp/screens/private/selectCamp/selectCamp.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String img = 'assets/img/png/maracuja.png';
  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance?.addPostFrameCallback((_) {
      context.read<ConfigBloc>().add(FetchCamps());
    });
  }

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
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return SelectCamp();
              }));
            },
            child: const Text('Adicionar novo plantio'),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: CustomScrollView(
        slivers: [
          SliverList(
            delegate: SliverChildListDelegate(
              <Widget>[
                Container(
                  padding: const EdgeInsets.fromLTRB(24.0, 32.0, 24.0, 48.0),
                  child: const Header(),
                ),
                // Camps(),
                Padding(
                  padding: const EdgeInsets.fromLTRB(24.0, 32.0, 24.0, 24.0),
                  child: Text(
                    'Hortaliças',
                    textAlign: TextAlign.start,
                    style: Theme.of(context).textTheme.headline3,
                  ),
                ),
              ],
            ),
          ),
          // SliverList(
          //   delegate: SliverChildListDelegate(
          //     <Widget>[
          //       if (state is LoadedConfigState)
          //         ListView.builder(
          //           shrinkWrap: true,
          //           physics: NeverScrollableScrollPhysics(),
          //           itemCount: state.camps.length,
          //           itemBuilder: (context, idnex) {
          //             final camp = state.camps[idnex];
          //             return CardItem(
          //               name: camp.name,
          //               photo: img,
          //             );
          //           },
          //         ),
          //     ],
          //   ),
          // ),

          // Consumer<ListCamp>(builder: (context, listCamp, child) {
          //   return listCamp.getListCamp.isNotEmpty
          //       ? SliverList(
          //           delegate: SliverChildListDelegate(
          //             List.generate(
          //               listCamp.getListCamp[0].getListPlanting.length,
          //               (index) => Padding(
          //                 padding: const EdgeInsets.symmetric(horizontal: 24.0),
          //                 child: CardItem(
          //                   photo: listCamp.getListCamp[0]
          //                       .getListPlanting[index].plant.photo,
          //                   name: listCamp.getListCamp[0].getListPlanting[index]
          //                       .plant.name,
          //                 ),
          //               ),
          //             ),
          //           ),
          //         )
          //       : SliverToBoxAdapter(
          //           child: Padding(
          //             padding: const EdgeInsets.symmetric(horizontal: 24.0),
          //             child: Column(
          //               children: <Widget>[
          //                 Text(
          //                   'Você não tem nenhum plantio no momento',
          //                   textAlign: TextAlign.left,
          //                   style: Theme.of(context).textTheme.bodyText1,
          //                 ),
          //               ],
          //             ),
          //           ),
          //         );
          // }),
          SliverList(
            delegate: SliverChildListDelegate(<Widget>[
              Container(
                height: 100,
              ),
            ]),
          ),
        ],
      ),
    );
  }
}

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Meus',
              style: const TextStyle(
                fontSize: 32.0,
              ),
            ),
            const Text(
              'Plantios',
              style: TextStyle(
                fontFamily: 'Jost',
                fontSize: 32.0,
                fontWeight: FontWeight.w900,
              ),
            ),
          ],
        ),
        Column(
          children: [
            Container(
              height: 48,
              child: Image.asset('assets/img/png/climaTempoNuvemSol.png'),
            ),
            Text(
              '28º C',
              textAlign: TextAlign.start,
              style: Theme.of(context).textTheme.bodySmall,
            ),
          ],
        )
      ],
    );
  }
}
