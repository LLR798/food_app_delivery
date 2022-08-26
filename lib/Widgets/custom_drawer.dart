
import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.23,
            child: const DrawerHeader(
              padding: EdgeInsets.all(0),
              child: UserAccountsDrawerHeader(
                decoration: BoxDecoration(
                  color: Color(0xFF0808DD),
                ),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage('https://github.com/LLR798.png'),
                ),
                accountName: Text(
                  'Lucas Lumertz',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                accountEmail: Text(
                  'lucas@gmail.com',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
          const ListTile(
            leading: Icon(
              Icons.home_outlined,
              color: Color(0xFF0808DD),
            ),
            title: Text(
              'Página Principal',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const ListTile(
            leading: Icon(
              Icons.person_outlined,
              color: Color(0xFF0808DD),
            ),
            title: Text(
              'Minha Conta',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const ListTile(
            leading: Icon(
              Icons.shopping_cart_outlined,
              color: Color(0xFF0808DD),
            ),
            title: Text(
              'Minhas Compras',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const ListTile(
            leading: Icon(
              Icons.favorite_outline,
              color: Color(0xFF0808DD),
            ),
            title: Text(
              'Meus Favoritos',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const ListTile(
            leading: Icon(
              Icons.settings_outlined,
              color: Color(0xFF0808DD),
            ),
            title: Text(
              'Configurações',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const ListTile(
            leading: Icon(
              Icons.exit_to_app_outlined,
              color: Color(0xFF0808DD),
            ),
            title: Text(
              'Sair',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
