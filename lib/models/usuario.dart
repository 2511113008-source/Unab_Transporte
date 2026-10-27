abstract class Usuario {
  final String codigo;
  final String nombres;
  final String apellidos;

  Usuario({
    required this.codigo,
    required this.nombres,
    required this.apellidos,
  });

  String get nombreCompleto => '$nombres $apellidos';
}
