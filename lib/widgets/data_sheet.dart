import 'package:flutter/material.dart';

// Widget refernte a una ficha técnica
class DataSheet extends StatelessWidget {
  const DataSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      margin: const EdgeInsets.all(16),
      decoration: BoxDecoration(
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
      ),
    );
  }
}
