import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:smartcamp/components/atoms/button/button.dart';
import 'package:smartcamp/components/organism/containerGlobal/containerGlobal.dart';
import 'package:smartcamp/screens/public/loginToken/loginToken.dart';

class Login extends StatelessWidget {
  final inputPhoneController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  String img = 'assets/img/png/logo.png';

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
                return LoginToken();
              }));
            },
            child: const Text('Entrar'),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: ContainerGLobal(
        Center(
          child: Container(
            width: 500,
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 40),
                    child: Image.asset(img),
                  ),
                  TextFormField(
                    controller: inputPhoneController,
                    keyboardType: TextInputType.number,
                    inputFormatters: <TextInputFormatter>[
                      FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
                    ],
                    validator: (value) {
                      if (value != 9) {
                        return 'Número de celular invalido!';
                      }
                    },
                    textAlign: TextAlign.center,
                    decoration: const InputDecoration(
                      border: UnderlineInputBorder(),
                      hintText: 'Número de telefone',
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 8, 0, 16),
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: TextButton(
                        style: TextButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                        ),
                        onPressed: () {},
                        child: const Text('cadastrar-se'),
                      ),
                    ),
                  ),
                  // Button('Entrar'),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  String _validateInputPhone({String value = ''}) {
    return value.length != 9 ? 'aasd' : '';
  }
}
