import 'package:flutter/material.dart';
import 'package:peladeiro/entities/peladeiro_entity.dart';

class PeladeiroStore {
  ValueNotifier<List<PeladeiroEntity>> peladeiros = ValueNotifier<List<PeladeiroEntity>>([]);
}