import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/bienvenida.dart';
import 'package:flutter_application_1/screens/dashboard.dart';
import 'package:flutter_application_1/screens/formulario.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Cotización para Mascotas',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => BienvenidaScreen(),
        '/dashboard': (context) => DashboardScreen(),
        '/formulario': (context) => FormularioScreen(),
      },
    );
  }
}


