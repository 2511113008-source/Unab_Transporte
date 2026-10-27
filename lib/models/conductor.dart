import 'usuario.dart';

class Conductor extends Usuario {
  String? busAsignadoId;

  Conductor({
    required String codigoEmpleado,
    required super.nombres,
    required super.apellidos,
    this.busAsignadoId,
  }) : super(codigo: codigoEmpleado);
}
