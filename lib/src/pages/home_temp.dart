import 'package:flutter/material.dart';


class HomePagenTemp extends StatelessWidget {

  //Array 
  final opciones =['Diego','Emilio','Fuentes','Gomez'];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple.shade700,
        title: Text('Widget Tenp'),
      ),
      body: ListView(
        children: _crearItemsCorta()
      ),
    );
  }
  //forma 1 para crear arreglo de items
  List<Widget> _crearItems(){

    List<Widget> lista = new List<Widget>();

    for(String opt in opciones){

      final tempwidget = ListTile(
        title: Text(opt),
      );

      lista..add(tempwidget)
           ..add( Divider( color: Colors.purple.shade700,) );
    }
    
    return lista;
  }

  //forma 2 para crear arreglo de items
  List<Widget> _crearItemsCorta(){
    return opciones.map( (item) {

        return Column(
          children: <Widget>[
            ListTile(
              title: Text(item+'#'),
              subtitle: Text('Difuentes'),
              leading: Icon( Icons.brightness_4_outlined , color: Colors.purple.shade700),
              trailing: Icon(Icons.brightness_4_rounded , color: Colors.purple.shade700),
            ),
            Divider()
          ],
        );  
    }).toList();
  }
}