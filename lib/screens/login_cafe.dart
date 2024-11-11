import 'package:flutter/material.dart';

const Color colorPlomo = Colors.grey; // Color de subtítulo
const Color cafeOscuro = Color(0xFF6F4E37); // Color marrón oscuro personalizado

class LoginCafeScreen extends StatelessWidget {
  const LoginCafeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFFd7ccc8), // Degradado claro
              Color.fromARGB(255, 231, 221, 214), // Degradado oscuro
            ],
          ),
        ),
        child: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 60), // Espacio adicional superior
                // Título estilizado ajustado
                RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: 'Café\n',
                        style: TextStyle(
                          color: cafeOscuro,
                          fontSize: 55, // Tamaño ajustado para evitar corte
                          fontWeight: FontWeight.w800,
                          letterSpacing: 2.0,
                        ),
                      ),
                      TextSpan(
                        text: 'El mejor café del mundo',
                        style: TextStyle(
                          fontSize: 22,
                          color: colorPlomo,
                          fontWeight: FontWeight.w400,
                          height: 1.8,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 40),
                // Imagen GIF con sombra ajustada
                Container(
                  width: 200,
                  height: 200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.1), // Sombra más suave
                        spreadRadius: 3,
                        blurRadius: 10,
                      ),
                    ],
                  ),
                  child: ClipOval(
                    child: Image.asset(
                      'assets/giphy.gif',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                // Texto de bienvenida
                const Text(
                  '¡Bienvenido! Disfruta de una experiencia única con el mejor café.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: colorPlomo,
                    fontSize: 16,
                  ),
                ),
                const SizedBox(height: 30),
                // Campos de texto para email y contraseña
                TextField(
                  decoration: InputDecoration(
                    labelText: 'Correo Electrónico',
                    labelStyle: TextStyle(color: cafeOscuro), // Cambio de color
                    prefixIcon: Icon(Icons.email, color: cafeOscuro),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(18),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'Contraseña',
                    labelStyle: TextStyle(color: cafeOscuro), // Cambio de color
                    prefixIcon: Icon(Icons.lock, color: cafeOscuro),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(18),
                    ),
                  ),
                ),
                const SizedBox(height: 30),
                // Botón de Iniciar Sesión
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: cafeOscuro,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 90, vertical: 18),
                    minimumSize: const Size(double.infinity, 55),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18),
                    ),
                    elevation: 8,
                    shadowColor: cafeOscuro.withOpacity(0.4),
                  ),
                  child: const Text(
                    'Iniciar Sesión',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                // Botón de Registrarte
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey.shade200,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 90, vertical: 18),
                    minimumSize: const Size(double.infinity, 55),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18),
                      side: BorderSide(color: cafeOscuro, width: 2),
                    ),
                    elevation: 5,
                    shadowColor: cafeOscuro.withOpacity(0.3),
                  ),
                  child: Text(
                    'Registrarte',
                    style: TextStyle(
                      color: cafeOscuro,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                // Botones de acceso rápido, centrados y más grandes
                
                const SizedBox(height: 50),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
