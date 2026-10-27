import '../models/estudiante.dart';

class AuthService {
  // Por ahora simulado. Más adelante esto llama a tu servidor en Ubuntu.
  Future<Estudiante?> loginEstudiante(String codigo, String password) async {
    await Future.delayed(const Duration(seconds: 1));
    if (codigo.isNotEmpty && password.isNotEmpty) {
      return Estudiante(
        codigoEstudiante: codigo,
        nombres: 'Nombre',
        apellidos: 'Apellido',
      );
    }
    return null;
  }
}
