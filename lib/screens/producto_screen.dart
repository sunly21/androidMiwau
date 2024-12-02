import 'package:flutter/material.dart';

class ProductoScreen extends StatelessWidget {
  final String producto;
  final String precio;
  final String descripcion;
  final int cantidadDisponible;
  final String ingredientes;
  final String imagen;

  ProductoScreen({
    required this.producto,
    required this.precio,
    required this.descripcion,
    required this.cantidadDisponible,
    required this.ingredientes,
    required this.imagen,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(producto)),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(imagen, height: 200, fit: BoxFit.contain),
            SizedBox(height: 20),
            Text(
              producto,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              'Precio: $precio',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 20),
            Text(
              'Descripción:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Text(descripcion),
            SizedBox(height: 20),
            Text(
              'Cantidad Disponible:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Text('$cantidadDisponible unidades'),
            SizedBox(height: 20),
            Text(
              'Ingredientes:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Text(ingredientes),
          ],
        ),
      ),
    );
  }
}
