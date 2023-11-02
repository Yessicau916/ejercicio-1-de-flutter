import 'package:flutter/material.dart';

class Servicios extends StatelessWidget {
  const Servicios({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Servicios'),
        backgroundColor: Color.fromARGB(255, 81, 29, 82),
      ),
      body: const Center(
        child: Column(
          // MainAxisAlignment: Alinear elementos
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Widget personalizado
            Text(
              'Nuestros Servicios',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            ServicioCard(
              icon: Icons.content_cut,
              title: 'Corte de Cabello',
              description: 'Los mejores cortes de cabello para hombres.',
            ),
            ServicioCard(
              icon: Icons.face,
              title: 'Barba',
              description: 'Afeitado y cuidado de la barba de la más alta calidad.',
            ),
            ServicioCard(
              icon: Icons.remove_red_eye,
              title: 'Cejas',
              description: 'Diseño y depilación de cejas para resaltar tu mirada.',
            ),
          ],
        ),
      ),
    );
  }
}

class ServicioCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final String description;

  const ServicioCard({
    required this.icon,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color.fromARGB(255, 222, 208, 208),
      margin: const EdgeInsets.all(16),
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Icon(icon, size: 50, color: Color.fromARGB(255, 187, 58, 192)),
          ),
          Text(
            title,
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
          ),
          const SizedBox(height: 5),
          Text(description, style:const TextStyle(fontSize: 16), ),
        ],
      ),
    );
  }
}
