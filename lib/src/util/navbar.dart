import 'package:flutter/material.dart';
import 'package:proyecto_carnet_digital/src/screens/config.dart';
import 'package:proyecto_carnet_digital/src/screens/home.dart';
import 'package:proyecto_carnet_digital/src/screens/info.dart';
import 'package:proyecto_carnet_digital/src/screens/help.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          const UserAccountsDrawerHeader(
            accountName: Text('Juanito Perez'),
            accountEmail: Text('juanito@correo.com'),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                child: Image(
                  image: NetworkImage(
                      'https://i.pinimg.com/736x/8b/16/7a/8b167af653c2399dd93b952a48740620.jpg'),
                ),
              ),
            ),
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
          ),
          ListTile(
            title: const Text('Inicio'),
            leading: const Icon(Icons.home),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const InicioPage()),
              );
            },
          ),
          ListTile(
            title: const Text('Ajustes'),
            leading: const Icon(Icons.settings),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ConfigScreen()),
              );
            },
          ),
          ListTile(
            title: const Text('Ayuda y soporte'),
            leading: const Icon(Icons.help),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const SuportAndHelpScreen()),
              );
            },
          ),
          ListTile(
            title: const Text('Acerca de'),
            leading: const Icon(Icons.info),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const AboutScreen()),
              );
            },
          ),
          ListTile(
            title: const Text('Cerrar sesión'),
            leading: const Icon(Icons.exit_to_app),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
