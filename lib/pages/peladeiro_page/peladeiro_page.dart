import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:peladeiro/pages/peladeiro_page/peladeiro_controller.dart';
import 'package:peladeiro/pages/peladeiro_page/peladeiro_store.dart';

class PeladeiroPage extends StatefulWidget {
  const PeladeiroPage({super.key});

  @override
  State<PeladeiroPage> createState() => _PeladeiroPageState();
}

class _PeladeiroPageState extends State<PeladeiroPage> {
  TextEditingController nomeController = TextEditingController();
  TextEditingController posicaoController = TextEditingController();
  final store = GetIt.instance<PeladeiroStore>();
  final peladeiroController = GetIt.instance<PeladeiroController>();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        spacing: 15,
        children: <Widget>[
          TextField(
            decoration: InputDecoration(
              labelText: 'Nome',
            ),
            controller: nomeController,
          ),
          TextField(
            decoration: InputDecoration(
              labelText: 'Posição',
            ),
            controller: posicaoController,
          ),
          ElevatedButton(
              onPressed: () {
                peladeiroController.createPeladeiro(nomeController.text, posicaoController.text);
                Navigator.pop(context);
              },
              child: Text('Salvar')),
        ],
      ),
    );
  }
}
