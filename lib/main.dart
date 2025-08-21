import 'package:flutter/material.dart';

void main() {
  runApp(SaludGoWearApp());
}

class SaludGoWearApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SaludGo Wear',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: HomeScreen(),
    );
  }
}

// Pantalla principal
class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Ajustar tamaño del logo según pantalla
    double logoWidth = MediaQuery.of(context).size.width * 0.6;

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/logosaludgo.png', width: logoWidth),
            SizedBox(height: 30),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.7,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ActivityScreen()),
                  );
                },
                child: Text(
                  'Ver actividad',
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Pantalla de actividad
class ActivityScreen extends StatelessWidget {
  final int pasos = 4500;
  final int calorias = 220;

  @override
  Widget build(BuildContext context) {
    double fontSize = MediaQuery.of(context).size.width * 0.08;

    return Scaffold(
      appBar: AppBar(title: Text('Actividad')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Tus estadísticas:',
              style: TextStyle(
                  fontSize: fontSize, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Card(
              child: ListTile(
                leading: Icon(Icons.directions_walk, color: Colors.green),
                title: Text('Pasos', style: TextStyle(fontSize: fontSize * 0.8)),
                trailing: Text('$pasos', style: TextStyle(fontSize: fontSize * 0.8)),
              ),
            ),
            SizedBox(height: 10),
            Card(
              child: ListTile(
                leading: Icon(Icons.local_fire_department, color: Colors.red),
                title: Text('Calorías quemadas', style: TextStyle(fontSize: fontSize * 0.8)),
                trailing: Text('$calorias', style: TextStyle(fontSize: fontSize * 0.8)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
