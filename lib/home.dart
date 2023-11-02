import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('The Warrior Barber Shop'),
        backgroundColor: Color.fromARGB(255, 81, 29, 82),
      ),
      body: SingleChildScrollView( // Hacemos que el contenido sea desplazable
        child: Column(
          children: <Widget>[
            Container(
              padding: const EdgeInsets.all(16),
              child: Image.network(
                'https://static.vecteezy.com/system/resources/thumbnails/004/673/704/small/black-and-white-barbershop-equipment-collection-free-vector.jpg', // Ruta de tu imagen de la barbería
                width: 400, // Ancho de la imagen
                height: 200, // Alto de la imagen
              ),
            ),
            Center(
              child: Container(
                padding: const EdgeInsets.all(16),
                child: const Text(
                  '¡Bienvenidos a The Warrior Barber Shop!',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(16),
              child: const Text(
                'Somos su destino de confianza para servicios de barbería de alta calidad. Nuestro equipo de barberos expertos se enorgullece de ofrecer cortes de cabello, afeitados de barba y tratamientos de aseo de la más alta calidad. Visítenos para obtener un servicio excepcional y una experiencia de barbería inolvidable.',
                style: TextStyle(fontSize: 16),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
