import 'package:flutter/material.dart';
import 'package:peladeiro/entities/peladeiro_entity.dart';
import 'package:peladeiro/pages/peladeiro_page/peladeiro_store.dart';

class PeladeiroController extends ChangeNotifier {

  final PeladeiroStore store;

  PeladeiroController(this.store);

  void createPeladeiro(String nome, String posicao) {
    final peladeiro = PeladeiroEntity(nome: nome, posicao: posicao);
    store.peladeiros.value = [...store.peladeiros.value, peladeiro];
  }

}