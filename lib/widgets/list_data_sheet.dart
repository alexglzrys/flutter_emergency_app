import 'package:emergency_flutter_app/widgets/data_sheet.dart';
import 'package:flutter/material.dart';
import 'package:animate_do/animate_do.dart';

class ListDataSheet extends StatelessWidget {
  const ListDataSheet(this.data, {super.key});
  // Listado de emergencias médicas a renderizar en la lista separada
  final List<Map<String, dynamic>> data;
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: const EdgeInsets.all(16),
      // controlar el comportamiento de desplazamiento
      // BouncingScrollPhysics es una clase que define un comportamiento de desplazamiento elástico. Este efecto es similar al comportamiento de desplazamiento en dispositivos iOS, donde el contenido rebota cuando llega al final de la lista.
      physics: const BouncingScrollPhysics(),
      // Por cada elemento en la lista, renderiza un widget DataSheet
      // ? Aplicar efectos de animación a cada elemento de la lista al estilo Animate.css (https://pub.dev/packages/animate_do)
      itemBuilder: (context, index) => BounceInLeft(
        duration: const Duration(milliseconds: 1000),
        child: DataSheet(
          title: data[index]['title'],
          icon: data[index]['icon'],
          primaryColor: data[index]['primaryColor'],
          secondaryColor: data[index]['secondaryColor'],
          function: data[index]['function'],
        ),
      ),
      separatorBuilder: (context, index) => const SizedBox(height: 16),
      itemCount: data.length,
    );
  }
}
