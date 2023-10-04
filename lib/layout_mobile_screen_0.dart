import 'package:flutter/material.dart';
import 'layout_mobile_screen_1.dart';

class LayoutMobileScreen0 extends StatefulWidget {
  const LayoutMobileScreen0({super.key});
  @override
  State<LayoutMobileScreen0> createState() => _StateLayoutMobileScreen0();
}

class _StateLayoutMobileScreen0 extends State<LayoutMobileScreen0> {
  void _navigateTo(BuildContext context, String value) {
    Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => LayoutMobileScreen1(seccio: value)));
  }

  _StateLayoutMobileScreen0();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Nintendo DB'),
      ),
      body: ListView(
        children: <Widget>[
          // Aquí, si hi ha un ‘const’ cal treure’l
          ListTile(
            title: const Text('Personatges'),
            onTap: () => _navigateTo(context, 'Personatges'),
          ),
          const Divider(height: 0),
          ListTile(
            title: const Text('Jocs'),
            onTap: () => _navigateTo(context, 'Jocs'),
          ),
          const Divider(height: 0),
          ListTile(
            title: const Text('Consoles'),
            onTap: () => _navigateTo(context, 'Consoles'),
          ),
        ],
      ),
    );
  }
}
