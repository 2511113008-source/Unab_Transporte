import '../models/horario.dart';

class ScheduleService {
  // Datos de ejemplo. Más adelante vienen de tu base de datos.
  List<Horario> obtenerHorarios() {
    return [
      Horario(turno: Turno.manana, salidaUniversidad: '06:30', salidaCiudad: '06:00'),
      Horario(turno: Turno.tarde, salidaUniversidad: '13:00', salidaCiudad: '12:30'),
      Horario(turno: Turno.noche, salidaUniversidad: '20:00', salidaCiudad: '19:30'),
    ];
  }
}
