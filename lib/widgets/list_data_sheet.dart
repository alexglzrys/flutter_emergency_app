import 'package:emergency_flutter_app/widgets/data_sheet.dart';
import 'package:flutter/material.dart';

class ListDataSheet extends StatelessWidget {
  const ListDataSheet(this.data, {super.key});
  // Listado de emergencias médicas a renderizar en la lista separada
  final List<Map<String, dynamic>> data;
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: const EdgeInsets.all(16),
      // Por cada elemento en la lista, renderiza un widget DataSheet
      itemBuilder: (context, index) => DataSheet(
        title: data[index]['title'],
        icon: data[index]['icon'],
        primaryColor: data[index]['primaryColor'],
        secondaryColor: data[index]['secondaryColor'],
        function: data[index]['function'],
      ),
      separatorBuilder: (context, index) => const SizedBox(height: 16),
      itemCount: data.length,
    );
  }
}
