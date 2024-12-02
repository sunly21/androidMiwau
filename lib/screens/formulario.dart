import 'package:flutter/material.dart';

class FormularioScreen extends StatelessWidget {
  final TextEditingController veterinariaController = TextEditingController();
  final TextEditingController tipoMascotaController = TextEditingController();
  final TextEditingController nombreMascotaController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Formulario')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Campo para el nombre de la veterinaria
            TextField(
              controller: veterinariaController,
              decoration: InputDecoration(
                labelText: 'Nombre de la veterinaria',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 10),

            // Campo para el tipo de mascota
            TextField(
              controller: tipoMascotaController,
              decoration: InputDecoration(
                labelText: 'Tipo de mascota',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 10),

            // Campo para el nombre de la mascota
            TextField(
              controller: nombreMascotaController,
              decoration: InputDecoration(
                labelText: 'Nombre de la mascota',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),

            // Botón para guardar
            ElevatedButton(
              onPressed: () {
                final veterinaria = veterinariaController.text.trim();
                final tipoMascota = tipoMascotaController.text.trim();
                final nombreMascota = nombreMascotaController.text.trim();

                // Validación de campos
                if (veterinaria.isEmpty ||
                    tipoMascota.isEmpty ||
                    nombreMascota.isEmpty) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('Por favor, completa todos los campos.'),
                      backgroundColor: Colors.red,
                    ),
                  );
                  return;
                }

                // Mostrar los datos ingresados en un diálogo
                showDialog(
                  context: context,
                  builder: (_) => AlertDialog(
                    title: Text('Información Guardada'),
                    content: Text(
                      'Veterinaria: $veterinaria\n'
                      'Tipo de Mascota: $tipoMascota\n'
                      'Nombre de la Mascota: $nombreMascota\n¡Pronto se contactaran con usted!',
                    ),
                    actions: [
                      TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Text('Cerrar'),
                      ),
                    ],
                  ),
                );
              },
              child: Text('Guardar'),
            ),
          ],
        ),
      ),
    );
  }
}



