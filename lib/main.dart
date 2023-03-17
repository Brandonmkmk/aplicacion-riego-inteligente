import 'package:aplicacion_riego/UI/screens/edit_profile.dart';
// import 'package:aplicacion_riego/UI/screens/grafica_sensor_dht11.dart';
import 'package:aplicacion_riego/UI/screens/inicio_sesion.dart';
import 'package:aplicacion_riego/UI/screens/pantalla_principal.dart';
import 'package:aplicacion_riego/UI/screens/profile_screen.dart';
import 'package:aplicacion_riego/UI/screens/registro_usuario.dart';
import 'package:aplicacion_riego/UI/views/view_sensores.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'inicio',
      routes: {
        'inicio': (context) => inicioSesion(),
        'paginaPrincipal': (context) => const HomeScreen(),
        'viewPerfil': (context) => const Perfil(),
        'editar': (context) => const editarPerfil(),
        'registro': (context) => Registrar(),
        'sensores': (contex) => const configuracionView(),
        // 'grafic_dht11': (context) => const SensorDht11(),
      },
    );
  }
}
