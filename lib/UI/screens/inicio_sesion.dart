import 'package:aplicacion_riego/UI/screens/registro_usuario.dart';
import 'package:flutter/material.dart';

class inicioSesion extends StatelessWidget {
  final usuario = TextEditingController();
  final password = TextEditingController();
  String user = '';
  String contra = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  margin: const EdgeInsets.all(30),
                  child: const CircleAvatar(
                    maxRadius: 60,
                    backgroundImage: AssetImage('assets/logo.png'),
                  ))
            ],
          ),
          Container(
              padding: const EdgeInsets.all(25),
              child: TextField(
                controller: usuario,
                decoration: InputDecoration(
                  prefixIcon: const Icon(
                    Icons.person,
                    color: Colors.green,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                        color: Color.fromARGB(255, 3, 83, 6), width: 2),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  hintText: 'usuario',
                  hintStyle: const TextStyle(color: Colors.black, fontSize: 15),
                ),
                style: const TextStyle(color: Colors.green),
              )),
          Container(
              padding: const EdgeInsets.all(25),
              child: TextField(
                controller: password,
                decoration: InputDecoration(
                    prefixIcon: const Icon(
                      Icons.block,
                      color: Colors.green,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                          color: Color.fromARGB(255, 3, 83, 6), width: 2),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    hintText: 'Clave',
                    hintStyle: const TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                    )),
                obscureText: true,
              )),
          Container(
            margin: const EdgeInsets.all(20),
            alignment: Alignment.center,
            child: IconButton(
              icon: const Icon(Icons.login),
              color: Colors.green,
              onPressed: () {
                user = usuario.text;
                contra = password.text;

                if (user == 'utt' && contra == 'utt1234') {
                  Navigator.pushNamed(context, 'paginaPrincipal');
                } else if (user == '' || contra == '') {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return const AlertDialog(
                          title: Text(
                            'Ocurrio un error',
                            style: TextStyle(
                                fontSize: 18,
                                fontFamily: 'rbold',
                                color: Colors.black),
                          ),
                          content: Text(
                            'completa los datos requeridos',
                            style: TextStyle(color: Colors.red),
                          ),
                        );
                      });
                } else {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return const AlertDialog(
                          title: Text(
                            'Error al iniciar sesion',
                            style: TextStyle(color: Colors.black, fontSize: 20),
                          ),
                          content: Text(
                            'usuario o clave incorrecta',
                            style: TextStyle(color: Colors.red),
                          ),
                        );
                      });
                }
              },
            ),
          ),
          Container(
              margin: const EdgeInsets.all(20),
              alignment: Alignment.center,
              child: IconButton(
                  icon: const Icon(Icons.person_add),
                  color: Colors.green,
                  onPressed: () {
                    Navigator.pushNamed(context, 'registro');
                  })),
        ],
      ),
    );
  }
}
