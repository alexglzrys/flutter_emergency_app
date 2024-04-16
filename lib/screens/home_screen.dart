import 'package:emergency_flutter_app/widgets/data_sheet.dart';
import 'package:emergency_flutter_app/widgets/header.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Header(
              icon: FontAwesomeIcons.plus,
              title: 'Solicitudes',
              subitle: 'Asistencia Médica',
              primaryColor: Color(0xffff0000),
              secondaryColor: Color(0xff8f0000),
            ),
            DataSheet(
              icon: FontAwesomeIcons.carBurst,
              title: 'Accidente de Automovil',
              primaryColor: const Color(0xff542c9a),
              secondaryColor: const Color(0xff8f35b5),
              function: () {
                // ignore: avoid_print
                print('Automovil');
              },
            ),
          ],
        ),
      ),
    );
  }
}
