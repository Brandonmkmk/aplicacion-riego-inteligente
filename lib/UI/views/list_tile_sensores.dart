import 'package:flutter/material.dart';

class datosSensores extends StatelessWidget {
  const datosSensores({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(top: 25),
        child: Column(
          children: [
            ListTile(
                title: const Text(
                  '1',
                  style: TextStyle(color: Colors.black),
                ),
                subtitle: const Text(
                  'DHT11',
                  style: TextStyle(color: Colors.black),
                ),
                leading: const Icon(
                  Icons.sensors,
                  color: Colors.green,
                ),
                trailing: MaterialButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0)),
                    child: const Text(
                      'Ver',
                      style: const TextStyle(color: Colors.white),
                    ),
                    color: Colors.green,
                    onPressed: () {
                      Navigator.pushNamed(context, 'grafica_dht11');
                    })),
            ListTile(
                title: const Text(
                  '2',
                  style: TextStyle(color: Colors.black),
                ),
                subtitle: const Text(
                  'DHT11',
                  style: TextStyle(color: Colors.black),
                ),
                leading: const Icon(
                  Icons.sensors,
                  color: Colors.green,
                ),
                trailing: MaterialButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0)),
                    child: const Text(
                      'Ver',
                      style: const TextStyle(color: Colors.white),
                    ),
                    color: Colors.green,
                    onPressed: () {
                      Navigator.pushNamed(context, 'grafica_dht11');
                    })),
            ListTile(
                title: const Text(
                  '3',
                  style: TextStyle(color: Colors.black),
                ),
                subtitle: const Text(
                  'Humedad',
                  style: TextStyle(color: Colors.black),
                ),
                leading: const Icon(
                  Icons.sensors,
                  color: Colors.green,
                ),
                trailing: MaterialButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0)),
                    child: Text(
                      'Ver',
                      style: const TextStyle(color: Colors.white),
                    ),
                    color: Colors.green,
                    onPressed: () {
                      Navigator.pushNamed(context, 'grafica_humedad');
                    })),
            ListTile(
                title: const Text(
                  '4',
                  style: TextStyle(color: Colors.black),
                ),
                subtitle: const Text(
                  'Humedad',
                  style: TextStyle(color: Colors.black),
                ),
                leading: const Icon(
                  Icons.sensors,
                  color: Colors.green,
                ),
                trailing: MaterialButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0)),
                    child: Text(
                      'Ver',
                      style: const TextStyle(color: Colors.white),
                    ),
                    color: Colors.green,
                    onPressed: () {
                      Navigator.pushNamed(context, 'grafica_humedad');
                    })),
            ListTile(
                title: const Text(
                  '5',
                  style: TextStyle(color: Colors.black),
                ),
                subtitle: const Text(
                  'Humedad',
                  style: TextStyle(color: Colors.black),
                ),
                leading: const Icon(
                  Icons.sensors,
                  color: Colors.green,
                ),
                trailing: MaterialButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0)),
                    child: Text(
                      'Ver',
                      style: const TextStyle(color: Colors.white),
                    ),
                    color: Colors.green,
                    onPressed: () {
                      Navigator.pushNamed(context, 'grafica_humedad');
                    })),
            ListTile(
                title: const Text(
                  '6',
                  style: TextStyle(color: Colors.black),
                ),
                subtitle: const Text(
                  'Caudalimetro',
                  style: TextStyle(color: Colors.black),
                ),
                leading: const Icon(
                  Icons.sensors,
                  color: Colors.green,
                ),
                trailing: MaterialButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0)),
                    child: const Text(
                      'Ver',
                      style: TextStyle(color: Colors.white),
                    ),
                    color: Colors.green,
                    onPressed: () {
                      Navigator.pushNamed(context, 'grafica_aire');
                    })),
          ],
        ));
  }
}
