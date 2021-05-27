
import 'package:flutter/material.dart';

//import 'package:contador/src/pages/home_page.dart';
import 'package:contador/src/pages/contador_page.dart';



class MyApp extends StatelessWidget{

//se utiliza para sobreescribir el metodo build por defecto que viene en el widget 
  @override
  //la clase build se encarga de dibujar todo el widget
   //el metodo build retorna un widget 
  Widget build( context){
        
        //retornamos la clase materialApp que devuelve un chingo de cosas xD 
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          //widget principal
          home: Center (
            
            //child: HomePage(),
            child:ContadorPage(),
            )            
        );
  }

}