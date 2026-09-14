import 'package:flutter/material.dart';

class SubjectsPage extends StatelessWidget {
  const SubjectsPage({super.key});

  final List<Map<String, String>> materias = const [
    {
      'nombre': 'Matemáticas',
      'docente': 'Carlos Martínez',
    },
    {
      'nombre': 'Español',
      'docente': 'Laura Gómez',
    },
    {
      'nombre': 'Ciencias',
      'docente': 'Andrés Rodríguez',
    },
    {
      'nombre': 'Inglés',
      'docente': 'María López',
    },
    {
      'nombre': 'Educación Física',
      'docente': 'Jorge Pérez',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Materias'),
      ),

      body: ListView.builder(
        padding: const EdgeInsets.all(12),
        itemCount: materias.length,
        itemBuilder: (context, index) {
          final materia = materias[index];

          return Card(
            margin: const EdgeInsets.only(bottom: 10),

            child: ListTile(
              leading: const CircleAvatar(
                child: Icon(Icons.menu_book),
              ),

              title: Text(
                materia['nombre']!,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),

              subtitle: Text(
                'Docente: ${materia['docente']}',
              ),

              trailing: const Icon(
                Icons.arrow_forward_ios,
                size: 18,
              ),

              onTap: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(
                      'Seleccionaste ${materia['nombre']}',
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

