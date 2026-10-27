import 'package:flutter/material.dart';
import '../services/auth_service.dart';
import 'home_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _codigoCtrl = TextEditingController();
  final _passwordCtrl = TextEditingController();
  final _authService = AuthService();
  bool _cargando = false;

  Future<void> _ingresar() async {
    setState(() => _cargando = true);
    final estudiante = await _authService.loginEstudiante(_codigoCtrl.text, _passwordCtrl.text);
    setState(() => _cargando = false);
    if (estudiante != null && mounted) {
      Navigator.push(context, MaterialPageRoute(builder: (_) => const HomeScreen()));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Bus UNAB', style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold)),
            const SizedBox(height: 32),
            TextField(controller: _codigoCtrl, decoration: const InputDecoration(labelText: 'Código')),
            const SizedBox(height: 16),
            TextField(controller: _passwordCtrl, obscureText: true, decoration: const InputDecoration(labelText: 'Contraseña')),
            const SizedBox(height: 24),
            FilledButton(
              onPressed: _cargando ? null : _ingresar,
              child: _cargando ? const CircularProgressIndicator() : const Text('Ingresar'),
            ),
          ],
        ),
      ),
    );
  }
}
