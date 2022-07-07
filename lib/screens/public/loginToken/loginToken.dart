import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:smartcamp/components/atoms/button/button.dart';
import 'package:smartcamp/components/organism/containerGlobal/containerGlobal.dart';
import 'package:smartcamp/screens/private/home/home.dart';

class LoginToken extends StatefulWidget {
  @override
  _LoginTokenSatate createState() => _LoginTokenSatate();
}

class _LoginTokenSatate extends State<LoginToken> {
  @override
  Widget build(BuildContext context) {
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
                return Home();
              }));
            },
            child: const Text('Verificar código'),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: ContainerGLobal(
        Center(
          child: Container(
            width: 500,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Insira o codigo',
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.headline3,
                ),
                Text(
                  'de verificação',
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.headline3,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 40),
                  child: Container(
                    width: 300,
                    child: Row(
                      children: List<Widget>.generate(4, (int index) {
                        return Expanded(
                          child: TextFormField(
                            decoration: const InputDecoration(
                              border: UnderlineInputBorder(),
                              hintText: '?',
                              counterText: '',
                            ),
                            textAlign: TextAlign.center,
                            maxLength: 1,
                            keyboardType: TextInputType.number,
                            inputFormatters: <TextInputFormatter>[
                              FilteringTextInputFormatter.allow(
                                  RegExp(r'[0-9]')),
                            ],
                          ),
                        );
                      }),
                    ),
                  ),
                ),
                // Button('Entrar'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
