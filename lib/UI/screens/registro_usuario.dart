import 'package:flutter/material.dart';

class Registrar extends StatelessWidget {
  final nombre = TextEditingController();
  final apellido = TextEditingController();
  final clave = TextEditingController();

  String user = '';
  String apellidos = '';
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
                  child: Text(
                    'Crea tu cuenta',
                    style: TextStyle(color: Colors.green, fontSize: 40),
                  ))
            ],
          ),
          Container(
              padding: EdgeInsets.all(25),
              child: TextField(
                controller: nombre,
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.person,
                    color: Colors.green,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: Color.fromARGB(255, 3, 83, 6), width: 2),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  hintText: 'Nombre',
                  hintStyle: TextStyle(color: Colors.black, fontSize: 15),
                ),
                style: TextStyle(color: Colors.green),
              )),
          Container(
              padding: EdgeInsets.all(25),
              child: TextField(
                controller: apellido,
                decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.abc_rounded,
                      color: Colors.green,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Color.fromARGB(255, 3, 83, 6), width: 2),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    hintText: 'apellidos',
                    hintStyle: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                    )),
                obscureText: true,
              )),
          Container(
              padding: EdgeInsets.all(25),
              child: TextField(
                controller: clave,
                decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.block,
                      color: Colors.green,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Color.fromARGB(255, 3, 83, 6), width: 2),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    hintText: 'ingresa una clave unica',
                    hintStyle: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                    )),
                obscureText: true,
              )),
          Container(
              margin: EdgeInsets.all(20),
              alignment: Alignment.center,
              child: IconButton(
                  icon: Icon(Icons.login_outlined),
                  color: Colors.green,
                  onPressed: () {
                    user = nombre.text;
                    apellidos = apellido.text;
                    contra = clave.text;

                    if (user == '' || apellidos == '' || contra == '') {
                      showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              title: Text(
                                'Ocurrio un error',
                                style: TextStyle(),
                              ),
                              content: Text(
                                'rellena todos los campos que se te piden',
                                style: TextStyle(color: Colors.red),
                              ),
                            );
                          });
                    } else if (user == nombre.text &&
                        apellidos == apellido.text &&
                        contra == clave.text) {
                      Navigator.pushNamed(context, 'inicio');
                    }
                  })),
        ],
      ),
    );
  }
}
