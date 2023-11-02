import 'package:drawer/agenda.dart';
import 'package:flutter/material.dart';
import 'configuracion.dart';
import 'servicios.dart';
import 'usuarios.dart';
import 'home.dart';

class Menu extends StatefulWidget {
  const Menu({super.key});

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  String contenido = 'Bienvenidos a The Warrior Barber Shop';
  
  get color => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
      title: const Text('The Warrior Barber Shop'),
      backgroundColor:Color.fromARGB(255, 81, 29, 82),
      ),
      body: Center(child: Text(contenido)
      ),
      drawer: Drawer(
        child: ListView(
          children:  [
            const SizedBox(
              height: 50,
              child: DrawerHeader(
                decoration: BoxDecoration(
                  color:Color.fromARGB(255, 65, 15, 63),
                ),
                child: Text('The barber Warrior Shop', style: TextStyle(color: Colors.white), ),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.home, color:Color.fromARGB(255, 65, 15, 63),),
              title: const Text('Home'),
              onTap: () {
              // Navegar a la pantalla de home
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>  const Home() ),
                );
              },
            ),

           ListTile(
              leading: const Icon(Icons.account_circle_rounded ,color:Color.fromARGB(255, 65, 15, 63),),
              title: const Text('Usuarios'),
              onTap: () {
              // Navegar a la pantalla de Usuarios
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>  const Usuarios() ),
                );
              },
            ),
             ListTile(
              leading: const Icon(Icons.content_cut_sharp, color:Color.fromARGB(255, 65, 15, 63),),
              title: const Text('Servicios'),
            onTap: () {
              // Navegar a la pantalla de Servicios
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Servicios() ),
                );
              },
             ),
              ListTile(
              leading: const Icon(Icons.style,color: Color.fromARGB(255, 65, 15, 63),),
              title: const Text('Agenda'),
             onTap: () {
              // Navegar a la pantalla de Agenda
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Agenda() ),
                );
              },
              ),
            
            ListTile(
              leading: const Icon(Icons.settings_suggest_outlined,color: Color.fromARGB(255, 65, 15, 63),),
              title: const Text('Configuración'),
             onTap: () {
              // Navegar a la pantalla de Configuracion
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Configuracion() ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}






