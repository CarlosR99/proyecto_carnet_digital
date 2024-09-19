import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: const [
          UserAccountsDrawerHeader(
            accountName: Text('Juanito Perez'),
            accountEmail: Text('juanito@correo.com'),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                child: Image(
                  image: NetworkImage(
                      'https://www.pngitem.com/pimgs/m/146-1468479_my-profile-icon-blank-profile-picture-circle-hd.png'),
                ),
              ),
            ),
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
          ),
          ListTile(
            title: Text('Inicio'),
            leading: Icon(Icons.home),
          ),
          ListTile(
            title: Text('Ajustes'),
            leading: Icon(Icons.settings),

          ),
          ListTile(
            title: Text('Ayuda y soporte'),
            leading: Icon(Icons.help),

          ),
          ListTile(
            title: Text('Acerca de'),
            leading: Icon(Icons.info),
            
          ),
          ListTile(
            title: Text('Cerrar sesión'),
            leading: Icon(Icons.exit_to_app),
          ),
        ],
      ),
    );
  }
}
