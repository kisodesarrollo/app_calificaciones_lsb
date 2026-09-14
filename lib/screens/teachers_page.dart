import 'package:flutter/material.dart';

class TeachersPage extends StatelessWidget {
  const TeachersPage({super.key});

  final List<Map<String, String>> docentes = const [
    {
      'nombre': 'Carlos Martínez',
      'documento': '1001234567',
      'materia': 'Matemáticas',
    },
    {
      'nombre': 'Laura Gómez',
      'documento': '1007654321',
      'materia': 'Español',
    },
    {
      'nombre': 'Andrés Rodríguez',
      'documento': '1004567891',
      'materia': 'Ciencias',
    },
    {
      'nombre': 'María López',
      'documento': '1007418529',
      'materia': 'Inglés',
    },
    {
      'nombre': 'Jorge Pérez',
      'documento': '1003692581',
      'materia': 'Educación Física',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Docentes'),
      ),

      body: ListView.builder(
        padding: const EdgeInsets.all(12),
        itemCount: docentes.length,
        itemBuilder: (context, index) {
          final docente = docentes[index];

          return Card(
            margin: const EdgeInsets.only(bottom: 10),

            child: ListTile(
              leading: CircleAvatar(
                child: Text(
                  docente['nombre']![0],
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),

              title: Text(
                docente['nombre']!,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),

              subtitle: Text(
                '${docente['materia']}\nDocumento: ${docente['documento']}',
              ),

              isThreeLine: true,

              trailing: const Icon(
                Icons.arrow_forward_ios,
                size: 18,
              ),

              onTap: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(
                      'Seleccionaste a ${docente['nombre']}',
                    ),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
