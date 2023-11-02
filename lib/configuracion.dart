import 'package:flutter/material.dart';

class Configuracion extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Configuración'),
        backgroundColor:Color.fromARGB(255, 81, 29, 82),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            ListTile(
              title: const Text('Idioma y Región'),
              subtitle: const Text('Selecciona tu idioma y región preferidos'),
              trailing: const Icon(Icons.language,color: Color.fromARGB(255, 65, 15, 63),),
              onTap: () {
              },
            ),
            ListTile(
              title: const Text('Notificaciones'),
              subtitle: const Text('Habilita o deshabilita las notificaciones'),
              trailing: const Icon(Icons.notifications,color: Color.fromARGB(255, 65, 15, 63),),
              onTap: () {
              },
            ),
            ListTile(
              title: const Text('Cuenta de Usuario'),
              subtitle: const Text('Administra tu cuenta y tu información de contacto'),
              trailing: const Icon(Icons.account_circle,color: Color.fromARGB(255, 65, 15, 63),),
              onTap: () {
              },
            ),
            ListTile(
              title: const Text('Privacidad y Seguridad'),
              subtitle: const Text('Ajusta la seguridad de tu cuenta y contraseña'),
              trailing: const Icon(Icons.lock,color: Color.fromARGB(255, 65, 15, 63),),
              onTap: () {
               
              },
            ),
          ],
        ),
      ),
    );
  }
}
