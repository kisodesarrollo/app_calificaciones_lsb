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
    
    List<Calificacion> obtenerCalificaciones() {
  switch (estudiante.id) {
    case 'EST001':
      return [
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

    case 'EST002':
      return [
        Calificacion(
          id: 'CAL005',
          estudianteId: estudiante.id,
          materia: 'Matemáticas',
          nota: 3.8,
          periodo: 'Periodo 1',
        ),
        Calificacion(
          id: 'CAL006',
          estudianteId: estudiante.id,
          materia: 'Español',
          nota: 4.6,
          periodo: 'Periodo 1',
        ),
        Calificacion(
          id: 'CAL007',
          estudianteId: estudiante.id,
          materia: 'Ciencias',
          nota: 4.2,
          periodo: 'Periodo 1',
        ),
        Calificacion(
          id: 'CAL008',
          estudianteId: estudiante.id,
          materia: 'Inglés',
          nota: 4.5,
          periodo: 'Periodo 1',
        ),
      ];

    case 'EST003':
      return [
        Calificacion(
          id: 'CAL009',
          estudianteId: estudiante.id,
          materia: 'Matemáticas',
          nota: 4.0,
          periodo: 'Periodo 1',
        ),
        Calificacion(
          id: 'CAL010',
          estudianteId: estudiante.id,
          materia: 'Español',
          nota: 3.5,
          periodo: 'Periodo 1',
        ),
        Calificacion(
          id: 'CAL011',
          estudianteId: estudiante.id,
          materia: 'Ciencias',
          nota: 4.8,
          periodo: 'Periodo 1',
        ),
        Calificacion(
          id: 'CAL012',
          estudianteId: estudiante.id,
          materia: 'Inglés',
          nota: 4.1,
          periodo: 'Periodo 1',
        ),
      ];

    case 'EST004':
      return [
        Calificacion(
          id: 'CAL013',
          estudianteId: estudiante.id,
          materia: 'Matemáticas',
          nota: 4.7,
          periodo: 'Periodo 1',
        ),
        Calificacion(
          id: 'CAL014',
          estudianteId: estudiante.id,
          materia: 'Español',
          nota: 4.3,
          periodo: 'Periodo 1',
        ),
        Calificacion(
          id: 'CAL015',
          estudianteId: estudiante.id,
          materia: 'Ciencias',
          nota: 4.5,
          periodo: 'Periodo 1',
        ),
        Calificacion(
          id: 'CAL016',
          estudianteId: estudiante.id,
          materia: 'Inglés',
          nota: 4.0,
          periodo: 'Periodo 1',
        ),
      ];

    case 'EST005':
      return [
        Calificacion(
          id: 'CAL017',
          estudianteId: estudiante.id,
          materia: 'Matemáticas',
          nota: 3.6,
          periodo: 'Periodo 1',
        ),
        Calificacion(
          id: 'CAL018',
          estudianteId: estudiante.id,
          materia: 'Español',
          nota: 4.1,
          periodo: 'Periodo 1',
        ),
        Calificacion(
          id: 'CAL019',
          estudianteId: estudiante.id,
          materia: 'Ciencias',
          nota: 3.9,
          periodo: 'Periodo 1',
        ),
        Calificacion(
          id: 'CAL020',
          estudianteId: estudiante.id,
          materia: 'Inglés',
          nota: 4.4,
          periodo: 'Periodo 1',
        ),
      ];
    case 'EST006':
  return [
    Calificacion(
      id: 'CAL021',
      estudianteId: estudiante.id,
      materia: 'Matemáticas',
      nota: 4.2,
      periodo: 'Periodo 1',
    ),
    Calificacion(
      id: 'CAL022',
      estudianteId: estudiante.id,
      materia: 'Español',
      nota: 3.9,
      periodo: 'Periodo 1',
    ),
    Calificacion(
      id: 'CAL023',
      estudianteId: estudiante.id,
      materia: 'Ciencias',
      nota: 4.4,
      periodo: 'Periodo 1',
    ),
    Calificacion(
      id: 'CAL024',
      estudianteId: estudiante.id,
      materia: 'Inglés',
      nota: 4.0,
      periodo: 'Periodo 1',
    ),
  ];

case 'EST007':
  return [
    Calificacion(
      id: 'CAL025',
      estudianteId: estudiante.id,
      materia: 'Matemáticas',
      nota: 4.8,
      periodo: 'Periodo 1',
    ),
    Calificacion(
      id: 'CAL026',
      estudianteId: estudiante.id,
      materia: 'Español',
      nota: 4.5,
      periodo: 'Periodo 1',
    ),
    Calificacion(
      id: 'CAL027',
      estudianteId: estudiante.id,
      materia: 'Ciencias',
      nota: 4.6,
      periodo: 'Periodo 1',
    ),
    Calificacion(
      id: 'CAL028',
      estudianteId: estudiante.id,
      materia: 'Inglés',
      nota: 4.3,
      periodo: 'Periodo 1',
    ),
  ];

case 'EST008':
  return [
    Calificacion(
      id: 'CAL029',
      estudianteId: estudiante.id,
      materia: 'Matemáticas',
      nota: 3.5,
      periodo: 'Periodo 1',
    ),
    Calificacion(
      id: 'CAL030',
      estudianteId: estudiante.id,
      materia: 'Español',
      nota: 3.8,
      periodo: 'Periodo 1',
    ),
    Calificacion(
      id: 'CAL031',
      estudianteId: estudiante.id,
      materia: 'Ciencias',
      nota: 3.7,
      periodo: 'Periodo 1',
    ),
    Calificacion(
      id: 'CAL032',
      estudianteId: estudiante.id,
      materia: 'Inglés',
      nota: 3.9,
      periodo: 'Periodo 1',
    ),
  ];

case 'EST009':
  return [
    Calificacion(
      id: 'CAL033',
      estudianteId: estudiante.id,
      materia: 'Matemáticas',
      nota: 4.4,
      periodo: 'Periodo 1',
    ),
    Calificacion(
      id: 'CAL034',
      estudianteId: estudiante.id,
      materia: 'Español',
      nota: 4.7,
      periodo: 'Periodo 1',
    ),
    Calificacion(
      id: 'CAL035',
      estudianteId: estudiante.id,
      materia: 'Ciencias',
      nota: 4.1,
      periodo: 'Periodo 1',
    ),
    Calificacion(
      id: 'CAL036',
      estudianteId: estudiante.id,
      materia: 'Inglés',
      nota: 4.5,
      periodo: 'Periodo 1',
    ),
  ];

case 'EST010':
  return [
    Calificacion(
      id: 'CAL037',
      estudianteId: estudiante.id,
      materia: 'Matemáticas',
      nota: 3.9,
      periodo: 'Periodo 1',
    ),
    Calificacion(
      id: 'CAL038',
      estudianteId: estudiante.id,
      materia: 'Español',
      nota: 4.2,
      periodo: 'Periodo 1',
    ),
    Calificacion(
      id: 'CAL039',
      estudianteId: estudiante.id,
      materia: 'Ciencias',
      nota: 4.0,
      periodo: 'Periodo 1',
    ),
    Calificacion(
      id: 'CAL040',
      estudianteId: estudiante.id,
      materia: 'Inglés',
      nota: 3.7,
      periodo: 'Periodo 1',
    ),
  ];

case 'EST011':
  return [
    Calificacion(
      id: 'CAL041',
      estudianteId: estudiante.id,
      materia: 'Matemáticas',
      nota: 4.6,
      periodo: 'Periodo 1',
    ),
    Calificacion(
      id: 'CAL042',
      estudianteId: estudiante.id,
      materia: 'Español',
      nota: 4.4,
      periodo: 'Periodo 1',
    ),
    Calificacion(
      id: 'CAL043',
      estudianteId: estudiante.id,
      materia: 'Ciencias',
      nota: 4.8,
      periodo: 'Periodo 1',
    ),
    Calificacion(
      id: 'CAL044',
      estudianteId: estudiante.id,
      materia: 'Inglés',
      nota: 4.2,
      periodo: 'Periodo 1',
    ),
  ];

case 'EST012':
  return [
    Calificacion(
      id: 'CAL045',
      estudianteId: estudiante.id,
      materia: 'Matemáticas',
      nota: 3.7,
      periodo: 'Periodo 1',
    ),
    Calificacion(
      id: 'CAL046',
      estudianteId: estudiante.id,
      materia: 'Español',
      nota: 4.0,
      periodo: 'Periodo 1',
    ),
    Calificacion(
      id: 'CAL047',
      estudianteId: estudiante.id,
      materia: 'Ciencias',
      nota: 3.8,
      periodo: 'Periodo 1',
    ),
    Calificacion(
      id: 'CAL048',
      estudianteId: estudiante.id,
      materia: 'Inglés',
      nota: 4.1,
      periodo: 'Periodo 1',
    ),
  ];

case 'EST013':
  return [
    Calificacion(
      id: 'CAL049',
      estudianteId: estudiante.id,
      materia: 'Matemáticas',
      nota: 4.9,
      periodo: 'Periodo 1',
    ),
    Calificacion(
      id: 'CAL050',
      estudianteId: estudiante.id,
      materia: 'Español',
      nota: 4.6,
      periodo: 'Periodo 1',
    ),
    Calificacion(
      id: 'CAL051',
      estudianteId: estudiante.id,
      materia: 'Ciencias',
      nota: 4.7,
      periodo: 'Periodo 1',
    ),
    Calificacion(
      id: 'CAL052',
      estudianteId: estudiante.id,
      materia: 'Inglés',
      nota: 4.8,
      periodo: 'Periodo 1',
    ),
  ];

case 'EST014':
  return [
    Calificacion(
      id: 'CAL053',
      estudianteId: estudiante.id,
      materia: 'Matemáticas',
      nota: 3.4,
      periodo: 'Periodo 1',
    ),
    Calificacion(
      id: 'CAL054',
      estudianteId: estudiante.id,
      materia: 'Español',
      nota: 3.6,
      periodo: 'Periodo 1',
    ),
    Calificacion(
      id: 'CAL055',
      estudianteId: estudiante.id,
      materia: 'Ciencias',
      nota: 3.2,
      periodo: 'Periodo 1',
    ),
    Calificacion(
      id: 'CAL056',
      estudianteId: estudiante.id,
      materia: 'Inglés',
      nota: 3.8,
      periodo: 'Periodo 1',
    ),
  ];

case 'EST015':
  return [
    Calificacion(
      id: 'CAL057',
      estudianteId: estudiante.id,
      materia: 'Matemáticas',
      nota: 4.3,
      periodo: 'Periodo 1',
    ),
    Calificacion(
      id: 'CAL058',
      estudianteId: estudiante.id,
      materia: 'Español',
      nota: 4.5,
      periodo: 'Periodo 1',
    ),
    Calificacion(
      id: 'CAL059',
      estudianteId: estudiante.id,
      materia: 'Ciencias',
      nota: 4.2,
      periodo: 'Periodo 1',
    ),
    Calificacion(
      id: 'CAL060',
      estudianteId: estudiante.id,
      materia: 'Inglés',
      nota: 4.4,
      periodo: 'Periodo 1',
    ),
  ];

default:
  return [];
  }
}


    final calificaciones = obtenerCalificaciones();

    final promedio = calificaciones.isEmpty
    ? 0.0
    : calificaciones
            .map((calificacion) => calificacion.nota)
            .reduce((a, b) => a + b) /
        calificaciones.length;

        final aprobado = promedio >= 3.0;

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

            const SizedBox(height: 10),

            Card(
              child: Padding(
                padding: const EdgeInsets.all(18),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Promedio',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    Text(
                      promedio.toStringAsFixed(2),
                      style: const TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),

          const SizedBox(height: 40),

              Card(
              child: Padding(
                padding: const EdgeInsets.all(18),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Estado',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    Text(
                      aprobado ? 'APROBADO' : 'REPROBADO',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: aprobado ? Colors.green : Colors.red,
                      ),
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 40),

          ],
        ),
      ),
    );
  }
}