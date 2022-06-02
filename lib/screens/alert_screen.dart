

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AlertScreen extends StatelessWidget {
  const AlertScreen({Key? key}) : super(key: key);


  void displayDialogiOS(BuildContext context){
    showCupertinoDialog(
      barrierDismissible: false,
      context: context, 
      builder: (context) {
        return CupertinoAlertDialog(
          title: const Text('Titulo'),
          content: Column(mainAxisSize: MainAxisSize.min, children: const [
              Text('Este es el contenido de la alerta'),
              SizedBox(height: 10),
              FlutterLogo(size: 100)
            ]
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context), 
              child: const Text('Cancelar', style: TextStyle(color: Colors.red),)
            ),
            TextButton(
              onPressed: () => Navigator.pop(context), 
              child: const Text('OK')
            )
          ],
        );
      }
    );
  }


  void displayDialogAndroid(BuildContext context) {
    showDialog(
        barrierDismissible: false,
        context: context,
        builder: (context) {
          return AlertDialog(
            elevation: 5,
            title: const Text('Titulo'),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadiusDirectional.circular(10)
            ),
            content: Column(mainAxisSize: MainAxisSize.min, children: const [
              Text('Este es el contenido de la alerta'),
              SizedBox(height: 10),
              FlutterLogo(size: 100)
            ]
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context), 
              child: const Text('Cancelar', style: TextStyle(color: Colors.red),)
            ),
            TextButton(
              onPressed: () => Navigator.pop(context), 
              child: const Text('OK')
            )
          ],
        );
      }
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          // en caso de no querer usar el tema por defecto de la aplicacion
          // se utiliza este código para modificar un botón en especifico

          // style: ElevatedButton.styleFrom(
          //   primary: Colors.amber[700],
          //   shape: const StadiumBorder(),
          //   elevation: 0,
          // ),
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 15),
            child: Text('Mostrar Alerta', style: TextStyle(fontSize: 16)),
          ),
          //onPressed: () => displayDialogiOS(context),
          onPressed: () => displayDialogAndroid(context)
          // onPressed: () => Platform.isAndroid ?
          //  displayDialogAndroid(context) 
          //  : displayDialogiOS(context),
        ),
      ),
      floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.close),
          onPressed: () => Navigator.pop(context)
        
      ),
    );
  }
}
