// lib/src/pages/mis_productos/mis_productos_overview_page.dart
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class MisProductosOverviewPage extends StatelessWidget {
  const MisProductosOverviewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mis Productos'),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Bienvenido a la sección de Mis Productos!',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text('Aquí podrás ver todos tus productos financieros.'),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}