import 'package:flutter/material.dart';
import 'package:proyecto_carnet_digital/screens/config.dart';
import 'package:proyecto_carnet_digital/screens/home.dart';
import 'package:proyecto_carnet_digital/screens/info.dart';
import 'package:proyecto_carnet_digital/screens/help.dart';

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
                  image: NetworkImage('https://i.pinimg.com/736x/8b/16/7a/8b167af653c2399dd93b952a48740620.jpg'),
                ),
              ),
            ),
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
          ),
          ListTile(
            title:const Text('Inicio'),
            leading:const Icon(Icons.home),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => InicioPage()),
              );
            },
          ),
          ListTile(
            title:const Text('Ajustes'),
            leading:const Icon(Icons.settings),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => AjustesPage()),
              );
            },
          ),
          ListTile(
            title:const Text('Ayuda y soporte'),
            leading:const Icon(Icons.help),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => AyudaSoportePage()),
              );
            },
          ),
          ListTile(
            title:const Text('Acerca de'),
            leading:const Icon(Icons.info),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => AcercaDePage()),
              );
            },
          ),
          ListTile(
            title:const Text('Cerrar sesión'),
            leading:const Icon(Icons.exit_to_app),
            onTap: () {
            },
          ),
        ],
      ),
    );
  }
}