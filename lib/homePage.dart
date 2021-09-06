import 'package:flutter/material.dart';
import 'package:flutter_getx/controlador/minombre.dart';
import 'package:get/get.dart';

import 'OtraPantalla.dart';
import 'controlador/controlador.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key}) : super(key: key);
 

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  //Instancia una clase de mi controlador e inicia mis estados.
  final controlador = Get.put(MiControlador());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Demo de GetX"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            //Siempre se pone el value porque nos permite acceder al valor de la variable
            //Se pone la variable dentro de un observable. Porque SIEMPRE DENTRO DE UN OBSERVADOR HAY UN OBJETO OBSERVABLE
            Obx ( () => Text('Hola : ${controlador.usuario.value.minombre} tu contador es: ${controlador.usuario.value.contador}') ),

            ElevatedButton(
              child: Text("Aumentar contador"),
              onPressed: () {
                controlador.usuario.value.contador++;
                controlador.usuario.refresh();
               }),

            
          ],
         
        ),
        
      ),// This trailing comma makes auto-formatting nicer for build methods.
      floatingActionButton: FloatingActionButton(
              child: Icon (Icons.arrow_right_outlined),
              onPressed: (){
                controlador.usuario.value=Usuario("Disminuidor", controlador.usuario.value.contador);
                Get.to(OtraPagina());
              }),
    );
  }
}
