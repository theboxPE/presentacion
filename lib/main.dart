import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Presentacion',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Mi presentacion'),
        ),
        body: Center(
          child: Column(
            children: [
              SizedBox(
                height: 250.0,
                width: 350.0,
                child: Image.asset(
                  'assets/fp.jpg',
                  fit: BoxFit.contain,
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                'Gabriel Adolfo Perez Regalado',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 20),
              const Text(
                'Esta es la fecha y hora actual:',
                style: TextStyle(fontSize: 18),
              ),
              const SizedBox(height: 8),
              Builder(
                builder: (context) {
                  var now = DateTime.now();
                  return Text(
                    '${now.day}/${now.month}/${now.year}, ${now.hour}:${now.minute}:${now.second}',
                    style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}