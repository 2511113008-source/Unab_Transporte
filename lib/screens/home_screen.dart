import 'package:flutter/material.dart';
import 'schedules_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Ruta del bus')),
      body: Container(
        color: Colors.grey.shade300,
        child: const Center(child: Text('Aquí va el mapa (sección 6 del documento)')),
      ),
      floatingActionButton: FloatingActionButton.extended(
        icon: const Icon(Icons.schedule),
        label: const Text('Horarios'),
        onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (_) => const SchedulesScreen())),
      ),
    );
  }
}
