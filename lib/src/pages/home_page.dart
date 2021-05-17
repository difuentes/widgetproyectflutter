import 'package:flutter/material.dart';
import 'package:widgetproyectflutter/src/providers/menu_provider.dart';


class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Difuentes'),
        leading: Icon( Icons.brightness_3 , color: Colors.white),
        backgroundColor: Colors.purple.shade700,
        ),
       body: _lista(),
      );
  }
      
  Widget _lista() {

    menuProvider.cargarData().then((opciones){
      print(opciones);
    });

    return ListView(
      children: _listaItems(),
    );
  }
      
  List<Widget> _listaItems() {
    return [
      ListTile(title: Text('Gol')),
    ];
  }
}