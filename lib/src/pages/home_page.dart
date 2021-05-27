import 'package:flutter/material.dart';

class HomePage extends StatelessWidget { 
    
    //definimos en una variable el estilo del widget
     final estiloTexto = new TextStyle(fontSize: 25);

     @override
     Widget build(BuildContext context) {
       return Scaffold(
         appBar: AppBar(
           title: Text('Titulo'),
         ),
         body: Center(
           //el child es una columna 
           child: Column(
             //con el contenido centrado
             mainAxisAlignment: MainAxisAlignment.center,
             //recibe un array de widgets
             children: <Widget>[
               //le asignamos estilo al texto con la variable definida al principio
               Text('Numero de putos clicks:',style:estiloTexto),
               Text('0',style:estiloTexto),
             ],
           )
           ),
          //cambiar la posicion del boton, esta propiedad va fuera del widget button 
          // floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
           floatingActionButton: FloatingActionButton(
             child: Icon(Icons.add),
             onPressed:(){
               print('hola jotos!');
             },
           )  
       );
     }
}