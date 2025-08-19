import 'package:auto_route/auto_route.dart';
import 'package:bancamovilr/index.dart';
import 'package:flutter/material.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:intl/intl.dart';

@RoutePage()
class ContactenosPage extends ConsumerStatefulWidget {
  const ContactenosPage({super.key});
  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _ContactenosPageState();
}

class _ContactenosPageState extends ConsumerState<ContactenosPage> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Image.asset('assets/images/logopantallamenu.png', width: 120, height: 80),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(10,550,10,20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ProcessButton(
                key: const ValueKey('llamara'),
                onPressed: () {
                  appRouter.push(const MantenimientoRoute());
                },
                text: 'Llamar a (03) 3730810'.toUpperCase(),
              ),
              ProcessButton(
                key: const ValueKey('cancelarllamada'),
                onPressed: () {
                  appRouter.pop();
                },
                text: 'Cancelar'.toUpperCase(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}