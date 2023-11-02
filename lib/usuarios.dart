import 'package:flutter/material.dart';

class Usuarios extends StatelessWidget {
  const Usuarios({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Usuarios'),
        backgroundColor: Color.fromARGB(255, 81, 29, 82),
      ),
      body: const SingleChildScrollView( // Utilizamos SingleChildScrollView para hacer desplazable el contenido si es largo
        child: Column(
          children: <Widget>[
            ListTile(
              leading: Icon(Icons.supervisor_account, color: Colors.blue), // Icono de gerente
              title: Text('Gerente'),
              subtitle: Text('Acceso completo a todas las funciones de la barbería'),
            ),
            ListTile(
              leading: Icon(Icons.person, color: Colors.green), // Icono de cliente
              title: Text('Cliente'),
              subtitle: Text('Puede programar citas y ver detalles de servicios'),
            ),
            ListTile(
              leading: Icon(Icons.people, color: Colors.red), // Icono de barberos
              title: Text('Barberos'),
              subtitle: Text('Pueden administrar sus agendas y servicios asignados'),
            ),
          ],
        ),
      ),
    );
  }
}
