import 'package:flutter/material.dart';

class editarPerfil extends StatelessWidget {
  const editarPerfil({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          title: Center(
            child: Text(
              'editar perfil',
              style: TextStyle(color: Colors.black),
            ),
          )),
      body: ListView(
        children: [
          Container(
              margin: EdgeInsets.all(15),
              child: TextField(
                decoration: InputDecoration(
                    hintText: 'nuevo nombre de usuario',
                    hintStyle: TextStyle(color: Colors.black),
                    prefixIcon: Icon(
                      Icons.new_label,
                      color: Colors.green,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    )),
              )),
          Container(
              margin: EdgeInsets.all(15),
              child: TextField(
                decoration: InputDecoration(
                    hintText: 'nueva direccion',
                    hintStyle: TextStyle(color: Colors.black),
                    prefixIcon: Icon(
                      Icons.new_label,
                      color: Colors.green,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    )),
              )),
          Container(
              margin: EdgeInsets.all(15),
              child: TextField(
                decoration: InputDecoration(
                    hintText: 'nuevo numero de telefono',
                    hintStyle: TextStyle(color: Colors.black),
                    prefixIcon: Icon(
                      Icons.new_label,
                      color: Colors.green,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    )),
              )),
          Container(
              margin: EdgeInsets.all(15),
              child: TextField(
                decoration: InputDecoration(
                    hintText: 'nuevo correo electronico',
                    hintStyle: TextStyle(color: Colors.black),
                    prefixIcon: Icon(
                      Icons.new_label,
                      color: Colors.green,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    )),
              )),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  margin: EdgeInsets.all(15),
                  child: IconButton(
                    iconSize: 40,
                    icon: Icon(
                      Icons.save,
                    ),
                    color: Colors.green,
                    onPressed: () {},
                  ))
            ],
          )
        ],
      ),
    );
  }
}
