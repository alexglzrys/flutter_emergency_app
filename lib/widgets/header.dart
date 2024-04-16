import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    // Existen muchas formas de lograr el mismo diseño.
    // En este caso el contenido del header actuan como elementos sitiados dentro de una pila, y no como hijos directos del elemento encargado de generar el color de fopndo gradiente
    return Stack(children: [
      // Color de fondo gradiente
      const _BackgroundGradient(),
      // Icono de cruz roja con opacidad situado de forma absoluta
      Positioned(
        top: -50,
        left: -70,
        // El icono forma parte del paquete FontAwesome
        child: FaIcon(
          FontAwesomeIcons.plus,
          color: Colors.white.withOpacity(0.3),
          size: 220,
        ),
      ),
      // Información textual colocada dentro del Header
      SizedBox(
        height: 250,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Solicitudes',
              style:
                  TextStyle(color: Colors.white.withOpacity(0.7), fontSize: 18),
            ),
            const SizedBox(
              height: 10,
              width: double.infinity,
            ),
            Text('Asistencia Médica',
                style: TextStyle(
                    color: Colors.white.withOpacity(0.8),
                    fontSize: 25,
                    fontWeight: FontWeight.bold)),
            const SizedBox(height: 10),
            const FaIcon(
              FontAwesomeIcons.plus,
              color: Colors.white,
              size: 60,
            ),
          ],
        ),
      )
    ]);
  }
}

// Widget que representa el color de fondo gradiente
class _BackgroundGradient extends StatelessWidget {
  const _BackgroundGradient();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(80),
          ),
          gradient: LinearGradient(
            colors: [
              Color(0xffff0000),
              Color(0xff8f0000),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          )),
    );
  }
}
