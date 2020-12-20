import 'package:flutter/material.dart';

class BasicoPage extends StatelessWidget {

  final estiloTitulo = TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold);
  final estiloSubTitulo = TextStyle(fontSize: 18.0, color: Colors.grey);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: SingleChildScrollView(
       child: Column(
          children: <Widget>[
         
         _crearImagen(),

         _crearTitulo(),

         _crearAcciones(),

         _crearTexto(),
         _crearTexto(),
         _crearTexto(),
         _crearTexto(),
         _crearTexto()

        ],
       ),
      )
    );
  }

  Widget _crearImagen(){
    return Container(
      width: double.infinity,
      child: Image(
        image: NetworkImage('https://lh3.googleusercontent.com/-H6PacdskbPehw_P3NQvLvIix3PK3gNC82AZXhpFhYm5PVY26CqyHieUp_jifhmYY-FrcezAVQ=w640-h400-e365'),
        fit: BoxFit.cover,
        height: 200.0
        ),
    );
  }

  Widget _crearTitulo(){
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
        child: Row(
          children: <Widget>[
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text('Lago con montañas', style: estiloTitulo),
                        SizedBox(height: 7.0,),
                        Text('Unas montañas en México', style: estiloSubTitulo)
                      ],
                    ),
                  ),
                  Icon(Icons.star, color: Colors.orange, size: 30.0,),
                  Text('41', style: TextStyle(fontSize: 20.0),)
                ],
            ),
          ),
              );
  }

  Widget _crearAcciones(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        _accion(Icons.call, 'CALL'),
        _accion(Icons.near_me, 'ROUTE'),
        _accion(Icons.share, 'SHARE')
      ]
    );
  }

  Widget _accion(IconData icon, String texto){
    return Column(
      children: <Widget>[
        Icon(icon, color:  Colors.blue, size: 40.0),
        SizedBox(height: 5.0),
        Text(texto, style: TextStyle(fontSize: 15.0, color:Colors.blue))
      ],
    );
  }

  Widget _crearTexto(){
    return SafeArea(
          child: Container(
        padding: EdgeInsets.symmetric(horizontal: 40.0),
        child: Text(
          'El software es una palabra que proviene del idioma inglés, pero que gracias a la masificación de uso, ha sido aceptada por la Real Academia Española. Según la RAE, el software es un conjunto de programas, instrucciones y reglas informáticas que permiten ejecutar distintas tareas en una computadora.',
          textAlign: TextAlign.justify
        ),
      ),
    );
  }

}