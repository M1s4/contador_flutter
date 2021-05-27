import 'package:flutter/material.dart';

class ContadorPage extends StatefulWidget {

@override
 //createState (){
 // return _ContadorPageState();
 //}
 //hacemos mas corta la funcion que devuelve la instancia contadorpagestate()
 //en una funcion flecha con el return incluido xD
 createState() => _ContadorPageState();
}

//esta clase es el estado del widget por eso se pone privada la clase "_"
//al ser clase generica se necesita especificar 
class _ContadorPageState extends State <ContadorPage>{
   //definimos en una variable el estilo del widget
   //se hacen privadas las variables con el _
     final _estiloTexto = new TextStyle(fontSize: 25);

     int _conteo =10;

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
               Text('Numero de putos clicks:',style:_estiloTexto),
               Text('$_conteo',style:_estiloTexto),
             ],
           )
           ),
          //cambiar la posicion del boton, esta propiedad va fuera del widget button 
          // floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
           floatingActionButton: _crearBotones()
           
           
           
           /* FloatingActionButton(
             child: Icon(Icons.add),
             onPressed:(){
               print('hola jotos!');
               _conteo++;

               setState(( ) {
                                
                              });
             },
           )  */
       );
     }
     
     //creamos una funcion que retorna un widget
     Widget _crearBotones(){

       return  Row(
         //en un row "horizontal" el mainAxisAligment.end nos alinea al final los widget's
         mainAxisAlignment: MainAxisAlignment.end,
         //el hijo del row es una lista de widgets
         children: <Widget>[
           //ponemos una caja con 30 pixeles de largo
            SizedBox(width:30),
            //el widget debe tener un "onPressed" por defecto
            FloatingActionButton(child: Icon(Icons.exposure_zero),onPressed: _reiniciar, ),
            //este metodo agrega el widget hasta el inicio 
            Expanded(child:SizedBox()),
            //Mandamos a llamar a la funcion que hara al hacerse presion sobre el widget, esto para no generar mucho codigo
            FloatingActionButton(child: Icon(Icons.remove),onPressed: _quitar, ),
            SizedBox(width: 5.0),
            FloatingActionButton(child: Icon(Icons.add),onPressed: _agregar, )


         ],
       );
     }
     //creamos un metodo que no devuelve nada "void" 
      void _agregar(){
        //llamamos al metodo "setState" para redibujar el widget
        //este metodo solo existe dentro de los stafulwidgets "widgets que cambian de estado"
        setState(()=>_conteo++);
      }

      void _quitar(){
        setState(()=>_conteo--);
      }

      void _reiniciar(){
        setState(()=>_conteo=0);
      }
}