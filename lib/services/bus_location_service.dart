import 'dart:async';
import '../models/bus.dart';

class BusLocationService {
  final _controlador = StreamController<Bus>.broadcast();
  Stream<Bus> get ubicacionBus => _controlador.stream;
  Timer? _temporizador;

  void iniciarSeguimiento(String busId) {
    _temporizador = Timer.periodic(const Duration(seconds: 5), (_) async {
      final bus = await _consultarServidor(busId);
      _controlador.add(bus);
    });
  }

  Future<Bus> _consultarServidor(String busId) async {
    // TODO (sección 7 del documento): aquí va la petición real HTTP al servidor Ubuntu
    return Bus(
      id: busId,
      placa: 'ABC-123',
      latitud: -10.7500,
      longitud: -77.7700,
      ultimaActualizacion: DateTime.now(),
    );
  }

  void detener() {
    _temporizador?.cancel();
    _controlador.close();
  }
}
