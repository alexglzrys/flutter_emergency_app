import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

// Widget refernte a una ficha técnica
class DataSheet extends StatelessWidget {
  const DataSheet(
      {super.key,
      this.icon,
      required this.title,
      this.primaryColor,
      this.secondaryColor,
      required this.function});

  // Parametrizar las propiedades del Data Sheet (solo el titulo y la función son obligatorias)
  final IconData? icon;
  final String title;
  final Color? primaryColor;
  final Color? secondaryColor;
  final Function() function;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: double.infinity,
      margin: const EdgeInsets.all(16),
      decoration: _decorationDataSheet(primaryColor, secondaryColor),
      // Ajustar el contenido al área segura (bordes redondeados) del Container (o elemento padre)
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        // Material permite mantener el color de fondo deseado en el Container mientras se muestra el efecto de "ripple" al presionar sobre él (InkWell).
        child: Material(
          color: Colors.transparent,
          // El InkWell está dentro de Material, lo que permite que el efecto de "ripple" sea visible incluso con el color de fondo definido.
          // Reaccionar a evento de Tap sobre este elemento
          child: InkWell(
            // Función a ejecutar cuando se presione el Data Sheet
            onTap: function,
            child: Stack(children: [
              Positioned(
                top: -20,
                right: -20,
                child: FaIcon(
                  icon ?? FontAwesomeIcons.a,
                  size: 150,
                  color: Colors.white.withOpacity(0.2),
                ),
              ),
              _MainContentDataSheet(icon: icon, title: title)
            ]),
          ),
        ),
      ),
    );
  }

  // Método privado que contiene la configuracion de la decoración de la ficha técnica
  BoxDecoration _decorationDataSheet(primaryColor, secondaryColor) {
    return BoxDecoration(
      gradient: LinearGradient(
        // Usar colores por defecto en caso de que los colores primario y secundario sean nulos
        colors: [
          primaryColor ?? Colors.red,
          secondaryColor ?? Colors.amber,
        ],
      ),
      borderRadius: BorderRadius.circular(15),
      // Aplicar sombra (color, posición o desfase, tamaño de la sombra)
      boxShadow: [
        BoxShadow(
          color: Colors.black.withOpacity(0.2),
          offset: const Offset(4, 6),
          blurRadius: 10,
        )
      ],
    );
  }
}

// Widget encargado de mostrar el contenido principal de la ficha técnica
class _MainContentDataSheet extends StatelessWidget {
  const _MainContentDataSheet({
    super.key,
    this.icon,
    required this.title,
  });

  // Parametrizar la información a mostrar dentro del Data Sheet
  final IconData? icon;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          children: [
            // Si la información del icono es nula, se muestra uno por defecto
            FaIcon(
              icon ?? FontAwesomeIcons.a,
              color: Colors.white,
              size: 32,
            ),
            const SizedBox(width: 16),
            // Este elemento ocupará todo el espacio disponible en la fila
            Expanded(
                child: Text(
              title,
              style: const TextStyle(color: Colors.white, fontSize: 15),
            )),
            const FaIcon(
              FontAwesomeIcons.chevronRight,
              color: Colors.white,
              size: 20,
            )
          ],
        ),
      ),
    );
  }
}
