
import 'dart:ffi';
import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AlertScreen extends StatelessWidget {
   
  const AlertScreen({Key? key}) : super(key: key);

  void displayDialogIOS (BuildContext context){

    showCupertinoDialog(
      context: context, 
      builder: (context){
        return CupertinoAlertDialog(
         title: Text('TITULO'),
          content:Column(
            mainAxisSize: MainAxisSize.min,
            children: const[
              Text('alerta'),
              SizedBox(height: 10,),
              FlutterLogo(size: 100,)
          ],
        ),
        actions: [
          TextButton(
            onPressed: () =>Navigator.pop(context),
            child: const Text('OK')),
            TextButton(
            onPressed: () =>Navigator.pop(context),
            child: const Text('Cancelar'))
        ],
        );
      });

  }

  void displayDialogAndroid (BuildContext context){
    showDialog(
      barrierDismissible: false,
      context: context, 
      builder: (context){
        
        
        return AlertDialog( 
          elevation: 5,
          title: const Text('TITULO'),
          content:Column(
            mainAxisSize: MainAxisSize.min,
            children: const[
              Text('alerta'),
              SizedBox(height: 10,),
              FlutterLogo(size: 100,)
          ],
        ),
        actions: [
          TextButton(
            onPressed: () =>Navigator.pop(context),
            child: const Text('OK')),
            TextButton(
            onPressed: () =>Navigator.pop(context),
            child: const Text('Cancelar'))
        ],
        );
      }
      );
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Center(
        child: ElevatedButton(
         child: const Padding(
           padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
           child: Text('AlertScreen', style: TextStyle(fontSize: 20),),
         ),
         //onPressed: ()=> displayDialogAndroid(context),
         //onPressed: ()=> displayDialogIOS(context),
         onPressed: () => !Platform.isAndroid
         ?displayDialogAndroid(context)
         :displayDialogIOS(context)
         ,
        )
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.close),
        onPressed: () =>Navigator.pop(context),
        
        )
        );
    
  }
}