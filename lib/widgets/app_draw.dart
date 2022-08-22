import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/screens/user_products_screen.dart';
import 'package:provider/provider.dart';
import '../screens/orders_screen.dart';
import '../providers/auth.dart';

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Column(
      children: [
        AppBar(
          title: Text('Навигация'),
          automaticallyImplyLeading: false,
        ),
        Divider(),
        ListTile(
          leading: Icon(Icons.shop),
          title: Text('Каталог'),
          onTap: () {
            Navigator.of(context).pushNamed('/');
          },
        ),
        ListTile(
          leading: Icon(Icons.list),
          title: Text('Мои заказы'),
          onTap: () {
            Navigator.of(context).pushNamed(OrdersScreen.routeName);
          },
        ),
        ListTile(
          leading: Icon(Icons.edit),
          title: Text('Мои товары'),
          onTap: () {
            Navigator.of(context).pushNamed(UserProductsScreen.routeName);
          },
        ),
        Divider(),
        ListTile(
          leading: Icon(Icons.exit_to_app),
          title: Text('Выход'),
          onTap: () {
            Navigator.of(context).pop();
            Navigator.of(context).pushReplacementNamed('/');
            Provider.of<Auth>(context, listen: false).logout();
          },
        ),
      ],
    ));
  }
}
