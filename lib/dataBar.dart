import 'package:flutter/material.dart';

class Listbar {
  final int topBar; //numero sobre a barra
  final int dataBar; // define o tamanho da barra 
  final DateTime dateTime; //data de dia na barra 
  final Color barColor; //cor da barra

  Listbar(
      {required this.topBar,
      required this.dataBar,
      required this.barColor,
      required this.dateTime});
}
