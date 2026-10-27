enum Turno { manana, tarde, noche }

class Horario {
  final Turno turno;
  final String salidaUniversidad;
  final String salidaCiudad;

  Horario({
    required this.turno,
    required this.salidaUniversidad,
    required this.salidaCiudad,
  });
}
