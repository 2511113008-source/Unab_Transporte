import 'package:flutter/material.dart';
import '../models/horario.dart';
import '../services/schedule_service.dart';

class SchedulesScreen extends StatelessWidget {
  const SchedulesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final horarios = ScheduleService().obtenerHorarios();
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Horarios'),
          bottom: const TabBar(tabs: [Tab(text: 'Mañana'), Tab(text: 'Tarde'), Tab(text: 'Noche')]),
        ),
        body: TabBarView(
          children: [Turno.manana, Turno.tarde, Turno.noche].map((turno) {
            final h = horarios.firstWhere((e) => e.turno == turno);
            return ListTile(
              title: Text('Sale de la universidad: ${h.salidaUniversidad}'),
              subtitle: Text('Sale de la ciudad: ${h.salidaCiudad}'),
            );
          }).toList(),
        ),
      ),
    );
  }
}
