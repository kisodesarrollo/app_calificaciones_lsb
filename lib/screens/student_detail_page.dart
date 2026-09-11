import 'package:flutter/material.dart';
import '../models/estudiante.dart';
import '../models/calificacion.dart';

class StudentDetailPage extends StatelessWidget {
  final Estudiante estudiante;

  const StudentDetailPage({
    super.key,
    required this.estudiante,
  });

  @override
  Widget build(BuildContext context) {
    final List<Calificacion> calificaciones = [
      Calificacion(
        id: 'CAL001',
        estudianteId: estudiante.id,
        materia: 'Matemáticas',
        nota: 4.5,
        periodo: 'Periodo 1',
      ),
      Calificacion(
        id: 'CAL002',
        estudianteId: estudiante.id,
        materia: 'Español',
        nota: 4.0,
        periodo: 'Periodo 1',
      ),
      Calificacion(
        id: 'CAL003',
        estudianteId: estudiante.id,
        materia: 'Ciencias',
        nota: 4.7,
        periodo: 'Periodo 1',
      ),
      Calificacion(
        id: 'CAL004',
        estudianteId: estudiante.id,
        materia: 'Inglés',
        nota: 3.8,
        periodo: 'Periodo 1',
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Estudiante'),
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [
            Center(
              child: CircleAvatar(
                radius: 45,
                child: Text(
                  estudiante.nombre[0],
                  style: const TextStyle(
                    fontSize: 35,
                  ),
                ),
              ),
            ),

            const SizedBox(height: 15),

            Center(
              child: Text(
                estudiante.nombre,
                style: const TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            const SizedBox(height: 25),

            Card(
              child: Padding(
                padding: const EdgeInsets.all(18),

                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,

                  children: [
                    const Text(
                      'Información del estudiante',
                      style: TextStyle(
                        fontSize: 19,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    const SizedBox(height: 15),

                    Text(
                      'ID: ${estudiante.id}',
                    ),

                    const SizedBox(height: 8),

                    Text(
                      'Documento: ${estudiante.documento}',
                    ),

                    const SizedBox(height: 8),

                    Text(
                      'Curso: ${estudiante.curso}',
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 25),

            const Text(
              'Calificaciones',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 12),

            ...calificaciones.map(
              (calificacion) {
                return Card(
                  margin: const EdgeInsets.only(bottom: 10),

                  child: ListTile(
                    leading: const Icon(
                      Icons.grade,
                    ),

                    title: Text(
                      calificacion.materia,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    subtitle: Text(
                      calificacion.periodo,
                    ),

                    trailing: Text(
                      calificacion.nota.toStringAsFixed(1),
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}