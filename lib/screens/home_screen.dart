import 'package:emergency_flutter_app/widgets/header.dart';
import 'package:emergency_flutter_app/widgets/list_data_sheet.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Listado de emergencias médicas
    final List<Map<String, dynamic>> data = [
      {
        'title': 'Accidente de Automovil',
        'icon': FontAwesomeIcons.carBurst,
        'primaryColor': const Color(0xff6989F5),
        'secondaryColor': const Color(0xff906EF5),
        'function': () {}
      },
      {
        'title': 'Emergencia Médica',
        'icon': FontAwesomeIcons.plus,
        'primaryColor': const Color(0xff66A9F2),
        'secondaryColor': const Color(0xff536CF6),
        'function': () {}
      },
      {
        'title': 'Dolores de Cabeza',
        'icon': FontAwesomeIcons.masksTheater,
        'primaryColor': const Color(0xffF2D572),
        'secondaryColor': const Color(0xffE06AA3),
        'function': () {}
      },
      {
        'title': 'Accidente de Bicicleta',
        'icon': FontAwesomeIcons.personBiking,
        'primaryColor': const Color(0xff317183),
        'secondaryColor': const Color(0xff46997D),
        'function': () {}
      },
      {
        'title': 'Accidente de Automovil',
        'icon': FontAwesomeIcons.carBurst,
        'primaryColor': const Color(0xff6989F5),
        'secondaryColor': const Color(0xff906EF5),
        'function': () {}
      },
      {
        'title': 'Emergencia Médica',
        'icon': FontAwesomeIcons.plus,
        'primaryColor': const Color(0xff66A9F2),
        'secondaryColor': const Color(0xff536CF6),
        'function': () {}
      },
      {
        'title': 'Dolores de Cabeza',
        'icon': FontAwesomeIcons.masksTheater,
        'primaryColor': const Color(0xffF2D572),
        'secondaryColor': const Color(0xffE06AA3),
        'function': () {}
      },
      {
        'title': 'Accidente de Bicicleta',
        'icon': FontAwesomeIcons.personBiking,
        'primaryColor': const Color(0xff317183),
        'secondaryColor': const Color(0xff46997D),
        'function': () {}
      },
      {
        'title': 'Accidente de Automovil',
        'icon': FontAwesomeIcons.carBurst,
        'primaryColor': const Color(0xff6989F5),
        'secondaryColor': const Color(0xff906EF5),
        'function': () {}
      },
      {
        'title': 'Emergencia Médica',
        'icon': FontAwesomeIcons.plus,
        'primaryColor': const Color(0xff66A9F2),
        'secondaryColor': const Color(0xff536CF6),
        'function': () {}
      },
      {
        'title': 'Dolores de Cabeza',
        'icon': FontAwesomeIcons.masksTheater,
        'primaryColor': const Color(0xffF2D572),
        'secondaryColor': const Color(0xffE06AA3),
        'function': () {}
      },
      {
        'title': 'Accidente de Bicicleta',
        'icon': FontAwesomeIcons.personBiking,
        'primaryColor': const Color(0xff317183),
        'secondaryColor': const Color(0xff46997D),
        'function': () {}
      },
    ];

    return Scaffold(
      body: Column(
        children: [
          const Header(
            icon: FontAwesomeIcons.plus,
            title: 'Solicitudes',
            subitle: 'Asistencia Médica',
            primaryColor: Color(0xffff0000),
            secondaryColor: Color(0xff8f0000),
          ),
          Expanded(child: ListDataSheet(data)),
        ],
      ),
    );
  }
}
