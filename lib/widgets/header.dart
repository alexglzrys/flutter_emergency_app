import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

// Widget referente al header de la aplicación
class Header extends StatelessWidget {
  const Header(
      {super.key,
      required this.icon,
      required this.title,
      required this.subitle,
      required this.primaryColor,
      required this.secondaryColor});

  // Propiedades que permiten parametrizar de forma dinámica la información a mostrar en este widget
  final IconData icon;
  final String title;
  final String subitle;
  final Color primaryColor;
  final Color secondaryColor;

  @override
  Widget build(BuildContext context) {
    // Existen muchas formas de lograr el mismo diseño.
    // En este caso el contenido del header actuan como elementos sitiados dentro de una pila, y no como hijos directos del elemento encargado de generar el color de fopndo gradiente
    return Stack(children: [
      // Color de fondo gradiente
      _BackgroundGradient(primaryColor, secondaryColor),
      // Icono de cruz roja con opacidad situado de forma absoluta
      Positioned(
        top: -50,
        left: -70,
        // El icono forma parte del paquete FontAwesome
        child: FaIcon(
          icon,
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
              title,
              style:
                  TextStyle(color: Colors.white.withOpacity(0.7), fontSize: 18),
            ),
            const SizedBox(
              height: 10,
              width: double.infinity,
            ),
            Text(subitle,
                style: TextStyle(
                    color: Colors.white.withOpacity(0.8),
                    fontSize: 25,
                    fontWeight: FontWeight.bold)),
            const SizedBox(height: 10),
            FaIcon(
              icon,
              color: Colors.white,
              size: 60,
            ),
          ],
        ),
      ),
      // Botón de acción en la parte superior derecha
      Positioned(
          right: 0,
          top: 0,
          // Debe mostrarse dentro de un área segura
          child: SafeArea(
            // Conservar el efecto de ripple
            child: Material(
              color: Colors.transparent,
              // Forma que tomará el efecto de ripple
              shape: const CircleBorder(),
              // Controlar cómo se debe manejar el recorte del contenido cuando el widget se desborda de sus límites (efecto ripple solo debe ser visible dentro de los bordes redondeados).
              clipBehavior: Clip.hardEdge,
              child: IconButton(
                icon: const FaIcon(
                  FontAwesomeIcons.ellipsisVertical,
                  color: Colors.white,
                ),
                onPressed: () {
                  // Mostrar un cuadro de dialogo para solicitar asistencia médica inmediata
                  showDialog(
                    context: context,
                    builder: (context) {
                      return const _AlertCall();
                    },
                  );
                },
              ),
            ),
          ))
    ]);
  }
}

// Wisget de alerta cuando se activa una solicutud de asistencia médica inmediata
class _AlertCall extends StatelessWidget {
  const _AlertCall();

  @override
  Widget build(BuildContext context) {
    return AlertDialog.adaptive(
      title: const Text(
        'Solicitar asistencia',
        style: TextStyle(color: Colors.red),
      ),
      content: const Text(
          'Mantenga la calma, cuando el operador atienda su llamada, favor de proporcionar su nombre, padecimientos y si es usted alérgico a cierto tipo de medicamento.\n\nEn breve llegará una ambulancia para auxiliarle.'),
      actions: [
        IconButton(
          onPressed: () {
            // ignore: avoid_print
            print(
                'obteniendo ubicación y llamando para recibir asistencia inmediata');
          },
          icon: const FaIcon(
            FontAwesomeIcons.phone,
            color: Colors.teal,
          ),
        )
      ],
    );
  }
}

// Widget que representa el color de fondo gradiente
class _BackgroundGradient extends StatelessWidget {
  const _BackgroundGradient(this.primaryColor, this.secondaryColor);

  final Color primaryColor;
  final Color secondaryColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      decoration: BoxDecoration(
          borderRadius: const BorderRadius.only(
            bottomLeft: Radius.circular(80),
          ),
          gradient: LinearGradient(
            colors: [
              primaryColor,
              secondaryColor,
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          )),
    );
  }
}
