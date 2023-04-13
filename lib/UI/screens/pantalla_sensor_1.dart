import 'package:aplicacion_riego/Models/dht11_data.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';

class Sensor1 extends StatefulWidget {
  const Sensor1({super.key});

  @override
  State<Sensor1> createState() => _Sensor1State();
}

class _Sensor1State extends State<Sensor1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: const Text(
            'DHT11',
            style: TextStyle(color: Colors.black),
          ),
        ),
        body: FutureBuilder(
          future: getData(),
          builder: ((context, snapshot) {
            if (snapshot.hasData) {
              return ListView.builder(
                  itemCount: snapshot.data?.length,
                  itemBuilder: (context, index) {
                    return Center(
                      child: Text(
                        snapshot.data?[index]['humedad'],
                        style: const TextStyle(color: Colors.black),
                      ),
                    );
                  });
            } else {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
          }),
        ));
  }
}
