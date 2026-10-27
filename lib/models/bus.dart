class Bus {
  final String id;
  final String placa;
  double latitud;
  double longitud;
  DateTime ultimaActualizacion;

  Bus({
    required this.id,
    required this.placa,
    required this.latitud,
    required this.longitud,
    required this.ultimaActualizacion,
  });

  void actualizarPosicion(double lat, double lng) {
    latitud = lat;
    longitud = lng;
    ultimaActualizacion = DateTime.now();
  }
}
