import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'controlador/controlador.dart';
import 'controlador/minombre.dart';
import 'homePage.dart';

class OtraPagina extends StatefulWidget {
  OtraPagina({Key? key}) : super(key: key);

  @override
  _OtraPaginaState createState() => _OtraPaginaState();
}

class _OtraPaginaState extends State<OtraPagina> {
    final controlador = Get.put(MiControlador());

  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text("Soy otra página"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            //Siempre se pone el value porque nos permite acceder al valor de la variable
            //Se pone la variable dentro de un observable. Porque SIEMPRE DENTRO DE UN OBSERVADOR HAY UN OBJETO OBSERVABLE
            Obx ( () => Text('Hola : ${controlador.usuario.value.minombre} tu contador es: ${controlador.usuario.value.contador}') ),

            ElevatedButton(
              child: Text("Disminuir contador"),
              onPressed: () {
                controlador.usuario.value.contador--;
                controlador.usuario.refresh();
              }),

            
          ],
        ),
      ),// This trailing comma makes auto-formatting nicer for build methods.
      floatingActionButton: FloatingActionButton(
              child: Icon (Icons.arrow_right_outlined),
              onPressed: (){
                controlador.usuario.value=Usuario("Aumentador", controlador.usuario.value.contador);
                Get.to(MyHomePage());
              })
    );
  }
}