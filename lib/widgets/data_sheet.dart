import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

// Widget refernte a una ficha técnica
class DataSheet extends StatelessWidget {
  const DataSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: double.infinity,
      margin: const EdgeInsets.all(16),
      decoration: _decorationDataSheet(),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: Stack(children: [
          Positioned(
            top: -20,
            right: -20,
            child: FaIcon(
              FontAwesomeIcons.carBurst,
              size: 150,
              color: Colors.white.withOpacity(0.2),
            ),
          ),
          const _MainContentDataSheet()
        ]),
      ),
    );
  }

  // Método privado que contiene la configuracion de la decoración de la ficha técnica
  BoxDecoration _decorationDataSheet() {
    return BoxDecoration(
      gradient: const LinearGradient(
        colors: [
          Color(0xff542c9a),
          Color(0xff8f35b5),
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
  });

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Row(
          children: [
            FaIcon(
              FontAwesomeIcons.carBurst,
              color: Colors.white,
              size: 32,
            ),
            SizedBox(width: 16),
            // Este elemento ocupará todo el espacio disponible en la fila
            Expanded(
                child: Text(
              'Motor Accidental',
              style: TextStyle(color: Colors.white, fontSize: 15),
            )),
            FaIcon(
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
