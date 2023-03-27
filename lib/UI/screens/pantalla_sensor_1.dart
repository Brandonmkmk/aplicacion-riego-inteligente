import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;

class Sensor1 extends StatelessWidget {
  const Sensor1({super.key});

  @override
  Widget build(BuildContext context) {
    final Data = [
      dht11(humedad: 10, suelo: 20),
      dht11(humedad: 5, suelo: 3),
      dht11(humedad: 15, suelo: 22)
    ];
    List<charts.Series<dht11, int>> series = [
      charts.Series<dht11, int>(
          id: 'linea 1',
          domainFn: (v, i) => v.humedad,
          measureFn: (v, i) => v.suelo,
          data: Data)
    ];
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: const Text(
            'DHT11',
            style: TextStyle(color: Colors.black),
          ),
        ),
        body: ListView(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 30),
              alignment: Alignment.center,
              child: const Text(
                'Datos recabados del sensor',
                style: TextStyle(fontSize: 30),
              ),
            ),
            SizedBox(
              height: 250,
              child: charts.LineChart(series),
            ),
            Container(
              margin: const EdgeInsets.only(top: 45),
              child: Column(
                mainAxisAlignment: MainAxisAlignment
                    .center, //se centra el boton horizontalmente
                children: [
                  MaterialButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0)),
                    child: const Text(
                      'Activar riego ',
                      style: TextStyle(color: Colors.white),
                    ),
                    color: Colors.green,
                    onPressed: () {},
                  ),
                  Column(
                    children: [
                      Container(
                          margin: const EdgeInsets.only(top: 20),
                          child: Icon(
                            Icons.schedule,
                            color: Colors.green,
                          )),
                      Container(
                          margin: const EdgeInsets.only(top: 6),
                          child: const Expanded(
                            child: Text(
                                'Se recomienda activar el riego cuando el sensor DHT11 este menos del 50% de humedad'),
                          ))
                    ],
                  )
                ],
              ),
            ),
          ],
        ));
  }
}

class dht11 {
  final int humedad;
  final int suelo;

  dht11({required this.humedad, required this.suelo});
}
