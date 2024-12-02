import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/veterinarias.dart';
import 'package:flutter_application_1/screens/producto_screen.dart'; // Importar la pantalla de producto

class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Dashboard')),
      body: ListView(
        children: [
          // Primera opción: Dog Chow
          ListTile(
            leading: Image.asset('images/dogchow.png', width: 50, height: 50),
            title: Text('Dog Chow'),
            subtitle: Text('Precio: \$7,000'),
            onTap: () {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text('Esta opción no está disponible.')),
              );
            },
          ),
          // Segunda opción: Whiskas
          ListTile(
            leading: Image.asset('images/whiskas.png', width: 50, height: 50),
            title: Text('Whiskas'),
            subtitle: Text('Precio: \$19,500 CLP'),
            onTap: () {
              // Navegar a la pantalla ProductoScreen
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ProductoScreen(
                    producto: 'Whiskas',
                    precio: '\$19,500 CLP',
                    descripcion:
                        'Nueva receta, cuidadosamente preparada para satisfacer las necesidades nutricionales de su gato. Alimento para gatos 100% completo y balanceadoFibras múltiples apoyan el funcionamiento gastrointestinal, contribuyendo a la formación de heces firmes y fáciles de limpiar.Recomendado por Waltham Petcare Science Institute - Una de las autoridades mundiales líderes en nutrición, cuidado y bienestar animal.',
                    cantidadDisponible: 58,
                    ingredientes: 'Maíz y/o trigo y/o arroz, harina de subproductos de pollo, gluten de maíz y/o harina de soja y/o salvado de maíz y/o salvado de trigo, grasa de pollo y/o sebo bovino, harina de carne y hueso bovino, hidrolizado de menudencias (pollo y/o cerdo y/o bovino), cloruro de sodio, harina de trigo, colorantes (caramelo, rojo ponceau, amarillo ocaso, tartrazina, índigo carmín), aminoácidos (taurina, arginina), vitaminas (E, niacina, ácido pantoténico, B1, A, B2, B6, ácido fólico, B12, D3), cloruro de potasio, cloruro de colina, minerales (sulfato ferroso, óxido de zinc, sulfato de cobre, iodato de calcio, selenito de sodio), zanahoria deshidratada, espinaca deshidratada, prebióticos (mananooligosacaridos), antioxidante (BHT/BHA).',
                    imagen: 'images/whiskas.png',
                  ),
                ),
              );
            },
          ),
          // Tercera opción: Champion Dog
          ListTile(
            leading: Image.asset('images/championdog.png', width: 50, height: 50),
            title: Text('Champion Dog'),
            subtitle: Text('Precio: \$5,990 CLP'),
            onTap: () {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text('Esta opción no está disponible.')),
              );
            },
          ),
        ],
      ),
      floatingActionButton: Stack(
        children: [
          // Botón para Veterinarias
          Positioned(
            bottom: 16,
            left: 16,
            child: FloatingActionButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => VeterinariasScreen()),
                );
              },
              child: Icon(Icons.location_city),
              tooltip: 'Ir a Veterinarias',
            ),
          ),
          // Botón para Formulario
          Positioned(
            bottom: 16,
            right: 16,
            child: FloatingActionButton(
              onPressed: () {
                Navigator.pushNamed(context, '/formulario'); // Acceso al formulario
              },
              child: Icon(Icons.add),
              tooltip: 'Ir al Formulario',
            ),
          ),
        ],
      ),
    );
  }
}





