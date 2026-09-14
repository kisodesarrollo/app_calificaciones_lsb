import 'package:flutter/material.dart';
import 'students_page.dart';
import 'teachers_page.dart';
import 'subjects_page.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Calificaciones LSB'),
        centerTitle: true,
      ),

      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.primary,
              ),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(
                    Icons.school,
                    size: 50,
                    color: Colors.white,
                  ),

                  SizedBox(height: 10),

                  Text(
                    'Calificaciones LSB',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  Text(
                    'Administrador',
                    style: TextStyle(
                      color: Colors.white70,
                    ),
                  ),
                ],
              ),
            ),

            ListTile(
              leading: const Icon(Icons.dashboard),
              title: const Text('Inicio'),
              onTap: () {
                Navigator.pop(context);
              },
            ),

              ListTile(
                leading: const Icon(Icons.people),
                title: const Text('Estudiantes'),
                onTap: () {
                  Navigator.pop(context);

                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const StudentsPage(),
                    ),
                  );
                },
              ),

            ListTile(
              leading: const Icon(Icons.person),
              title: const Text('Docentes'),
              onTap: () {
  Navigator.pop(context);

  Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => const TeachersPage(),
    ),
  );
},
            ),

            ListTile(
              leading: const Icon(Icons.menu_book),
              title: const Text('Materias'),
              onTap: () {
                Navigator.pop(context);

                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text('Módulo de materias próximamente'),
                  ),
                );
              },
            ),

            ListTile(
              leading: const Icon(Icons.grade),
              title: const Text('Calificaciones'),
              onTap: () {
                Navigator.pop(context);

                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text('Módulo de calificaciones próximamente'),
                  ),
                );
              },
            ),

            const Divider(),

            ListTile(
              leading: const Icon(Icons.logout),
              title: const Text('Cerrar sesión'),
              onTap: () {
                Navigator.pop(context);

                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [
            const Text(
              'Bienvenido, Administrador',
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 8),

            const Text(
              'Panel principal del sistema académico',
              style: TextStyle(
                fontSize: 16,
              ),
            ),

            const SizedBox(height: 25),

            GridView.count(
              crossAxisCount: 2,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),

              crossAxisSpacing: 15,
              mainAxisSpacing: 15,

              children: [
                _crearTarjeta(
                  context,
                  icono: Icons.people,
                  titulo: 'Estudiantes',
                  cantidad: '120',
                ),

                _crearTarjeta(
                  context,
                  icono: Icons.person,
                  titulo: 'Docentes',
                  cantidad: '15',
                ),

                _crearTarjeta(
                  context,
                  icono: Icons.menu_book,
                  titulo: 'Materias',
                  cantidad: '24',
                ),

                _crearTarjeta(
                  context,
                  icono: Icons.grade,
                  titulo: 'Calificaciones',
                  cantidad: '850',
                ),
              ],
            ),

            const SizedBox(height: 30),

            const Text(
              'Accesos rápidos',
              style: TextStyle(
                fontSize: 21,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 15),

            SizedBox(
              width: double.infinity,

              child: ElevatedButton.icon(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text(
                        'Módulo de calificaciones próximamente',
                      ),
                    ),
                  );
                },

                icon: const Icon(Icons.add_chart),

                label: const Text(
                  'Registrar calificación',
                ),

                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(
                    vertical: 15,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

 Widget _crearTarjeta(
  BuildContext context, {
  required IconData icono,
  required String titulo,
  required String cantidad,
}) {
  return Card(
    elevation: 3,

    child: InkWell(
      borderRadius: BorderRadius.circular(12),

      onTap: () {
  if (titulo == 'Estudiantes') {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const StudentsPage(),
      ),
    );
  }

  if (titulo == 'Docentes') {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const TeachersPage(),
      ),
    );
  }

  if (titulo == 'Materias') {
  Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => const SubjectsPage(),
    ),
  );
}
},

      child: Padding(
        padding: const EdgeInsets.all(15),

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            Icon(
              icono,
              size: 45,
            ),

            const SizedBox(height: 10),

            Text(
              cantidad,
              style: const TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),

            Text(
              titulo,
              style: const TextStyle(
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),
    ),
  );
} 
}