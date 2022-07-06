import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:smartcamp/components/atoms/button/button.dart';
import 'package:smartcamp/components/organism/containerGlobal/containerGlobal.dart';

class LoginToken extends StatefulWidget {
  @override
  _LoginTokenSatate createState() => _LoginTokenSatate();
}

class _LoginTokenSatate extends State<LoginToken> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                Button('Entrar'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
