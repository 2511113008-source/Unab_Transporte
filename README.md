# Bus UNAB — carpeta de trabajo (Sprint 1)

Esta carpeta trae solo el código Dart (`lib/`), no un proyecto Flutter completo con las carpetas `android/` e `ios/` (esas se generan con el SDK de Flutter instalado en tu máquina, algo que no puedo hacer desde aquí).

## Cómo usar esto en tu computadora

1. Instala el SDK de Flutter si no lo tienes: https://docs.flutter.dev/get-started/install
2. Crea el proyecto base:
   ```bash
   flutter create bus_unab
   ```
3. Copia el contenido de la carpeta `lib/` de aquí, reemplazando el `lib/` que generó `flutter create`.
4. Instala las dependencias necesarias para este sprint:
   ```bash
   cd bus_unab
   flutter pub add provider
   ```
   (Google Maps, geolocator y http los agregamos en los siguientes sprints, cuando lleguemos a esas secciones.)
5. Corre la app:
   ```bash
   flutter run
   ```

## Qué hay en cada carpeta

- `lib/models/` → las clases (Usuario, Estudiante, Conductor, Bus, Paradero, Horario)
- `lib/services/` → la lógica (login simulado, ubicación del bus simulada, horarios de ejemplo)
- `lib/screens/` → las pantallas (login, home con mapa de mentira, horarios)
- `lib/widgets/` → todavía vacía, aquí van piezas de UI reutilizables cuando las necesitemos
- `lib/main.dart` → punto de entrada

## Próximo paso

Cuando confirmes que esto corre en tu equipo (aunque sea con el mapa "de mentira"), avísame y seguimos con el Sprint 2: integrar Google Maps Platform de verdad.
