import 'package:flutter/material.dart';
import '../models/estudiante.dart';
import 'student_detail_page.dart';

class StudentsPage extends StatelessWidget {
  const StudentsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Estudiante> estudiantes = [
      Estudiante(
        id: 'EST001',
        nombre: 'Juan Pérez',
        documento: '123456789',
        curso: '701',
      ),
      Estudiante(
        id: 'EST002',
        nombre: 'María Gómez',
        documento: '987654321',
        curso: '701',
      ),
      Estudiante(
        id: 'EST003',
        nombre: 'Carlos Rodríguez',
        documento: '456789123',
        curso: '702',
      ),
      Estudiante(
        id: 'EST004',
        nombre: 'Laura Martínez',
        documento: '741852963',
        curso: '702',
      ),
      Estudiante(
        id: 'EST005',
        nombre: 'Andrés López',
        documento: '369258147',
        curso: '703',
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Estudiantes'),
      ),

      body: ListView.builder(
        padding: const EdgeInsets.all(12),

        itemCount: estudiantes.length,

        itemBuilder: (context, index) {
          final estudiante = estudiantes[index];

          return Card(
            margin: const EdgeInsets.only(bottom: 12),

            child: ListTile(
              leading: CircleAvatar(
                child: Text(
                  estudiante.nombre[0],
                ),
              ),

              title: Text(
                estudiante.nombre,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),

              subtitle: Text(
                'Curso: ${estudiante.curso}\n'
                'Documento: ${estudiante.documento}',
              ),

              isThreeLine: true,

              trailing: const Icon(
                Icons.arrow_forward_ios,
                size: 18,
              ),

              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => StudentDetailPage(
                      estudiante: estudiante,
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