import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;

class Aire extends StatelessWidget {
  const Aire({super.key});

  @override
  Widget build(BuildContext context) {
    final Data = [
      datos_aire(aire: 10, viento: 20),
      datos_aire(aire: 5, viento: 3),
      datos_aire(aire: 15, viento: 22)
    ];
    List<charts.Series<datos_aire, int>> series = [
      charts.Series<datos_aire, int>(
          id: 'linea 1',
          domainFn: (v, i) => v.aire,
          measureFn: (v, i) => v.viento,
          data: Data)
    ];
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: const Text(
            'Caudalimetro',
            style: TextStyle(color: Colors.black),
          ),
        ),
        body: ListView(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 30),
              alignment: Alignment.center,
              child: const Text(
                'Datos corriente de agua',
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
                                'Se recomienda activar el riego cuando el sensor caudalimetro este menos del 50%.'),
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

class datos_aire {
  int aire;
  int viento;

  datos_aire({required this.aire, required this.viento});
}
