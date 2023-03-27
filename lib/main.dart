import 'package:aplicacion_riego/Resources/connecting_data_base.dart';
import 'package:aplicacion_riego/UI/screens/edit_profile.dart';
import 'package:aplicacion_riego/UI/screens/inicio_sesion.dart';
import 'package:aplicacion_riego/UI/screens/pantalla_principal.dart';
import 'package:aplicacion_riego/UI/screens/pantalla_sensor_1.dart';
import 'package:aplicacion_riego/UI/screens/pantalla_sensor_2.dart';
import 'package:aplicacion_riego/UI/screens/pantalla_sensor_3.dart';
import 'package:aplicacion_riego/UI/screens/profile_screen.dart';
import 'package:aplicacion_riego/UI/screens/registro_usuario.dart';
import 'package:aplicacion_riego/UI/views/view_sensores.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  // Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  // void initState() {
  //   super.initState();
  //   obtenerUsuarios();
  // }

  // void obtenerUsuarios() async {
  //   CollectionReference nombreColeccion =
  //       FirebaseFirestore.instance.collection('users');
  //   QuerySnapshot users = await nombreColeccion.get();

  //   if (users.docs.length != 0) {
  //     for (var doc in users.docs) {
  //       print(doc.data());
  //     }
  //   }
  // }

  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'inicio',
      routes: {
        'inicio': (context) => inicioSesion(),
        'paginaPrincipal': (context) => const HomeScreen(),
        'viewPerfil': (context) => const Perfil(),
        'editar': (context) => editarPerfil(),
        'registro': (context) => Registrar(),
        'sensores': (contex) => const configuracionView(),
        'grafica_dht11': (context) => const Sensor1(),
        'grafica_humedad': (context) => const Humedad(),
        'grafica_aire': (context) => const Aire()
      },
    );
  }
}
