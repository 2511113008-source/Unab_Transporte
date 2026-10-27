import 'usuario.dart';

class Estudiante extends Usuario {
  Estudiante({
    required String codigoEstudiante,
    required super.nombres,
    required super.apellidos,
  }) : super(codigo: codigoEstudiante);
}
