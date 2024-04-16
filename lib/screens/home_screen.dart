import 'package:emergency_flutter_app/widgets/data_sheet.dart';
import 'package:emergency_flutter_app/widgets/header.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Header(
              icon: FontAwesomeIcons.plus,
              title: 'Solicitudes',
              subitle: 'Asistencia Médica',
              primaryColor: Color(0xffff0000),
              secondaryColor: Color(0xff8f0000),
            ),
            DataSheet(),
          ],
        ),
      ),
    );
  }
}
