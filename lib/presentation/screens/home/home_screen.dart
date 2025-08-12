import 'package:flutter/material.dart';
import 'package:widgets_app/config/menu/menu_items.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Widgets App Flutter'),
      ),
      body: _HomeView(),
    );
  }
}

class _HomeView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    var appMenu = appMenuItems;

    return ListView.builder(
      physics: BouncingScrollPhysics(),
      itemCount: appMenu.length,
      itemBuilder: (context, index,) => _CustomListTile(appMenu: appMenu[index]),
    );
  }
}

class _CustomListTile extends StatelessWidget {
  const _CustomListTile({
    required this.appMenu,
  });

  final MenuItems appMenu;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text('${appMenu.title}'),
      subtitle: Text('${appMenu.subTitle}'),
      trailing: Icon(Icons.arrow_forward_ios_outlined),
      onTap: () {
        print('Navigate to ${appMenu.link}');
      },
    );
  }
}