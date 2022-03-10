import 'package:flutter/material.dart';

import '../widgets/custom_field.dart';

class InputScreen extends StatelessWidget {
   
  const InputScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {

    final GlobalKey<FormState> myFormKey= GlobalKey<FormState>();

    final Map<String, String> formValues = {
      'first_name': 'Maira',
      'Last_name' : 'Rosales',
      'email'     : 'maira@gmail.com',
      'password'  : '123456',
      'role'      : 'admin',
    };
    return  Scaffold(
      appBar: AppBar(
        title: const Text('Inputs y Forms'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: 
          Form(

            key: myFormKey,
            child: Column(children: [
              
             CustomInputField(labeText: 'nombre', hintText: 'Nombre de Usuario', formValues: formValues, fromProperty: 'first_name',),
             const SizedBox( height: 30),
             
             CustomInputField(labeText: 'Apellido', hintText: 'Apellido de Usuario', formValues:formValues , fromProperty: 'Last_name',  ),
             const SizedBox( height: 30),
             
             CustomInputField(labeText: 'Correo', hintText: 'Correo de Usuario', keyBT: TextInputType.emailAddress, formValues: formValues, fromProperty: 'email', ),
             const SizedBox( height: 30),
             
             CustomInputField(labeText: 'Contraseña', hintText: 'Contraseña de Usuario', obsText: true, fromProperty: 'password', formValues: formValues, ),
             const SizedBox( height: 30),
          
             DropdownButtonFormField <String>(
               value: 'Admin',
               items: const[
                 DropdownMenuItem(value: 'Admin',child: Text('Admin')),
                 DropdownMenuItem(value: 'Superuser',child: Text('Superuser')),
                 DropdownMenuItem(value: 'Developer',child: Text('Developer')),
                 DropdownMenuItem(value: 'Jr. Developer',child: Text('Jr. Developer')),

               ], onChanged: (value ){
                 print(value);
                 formValues['role'] = value?? 'Admin';

               },
             ),
             
             ElevatedButton( 
             child: const SizedBox(
               width: double.infinity,
               child: Center( child: Text('Guardar'))
               ),
             onPressed: () {

               FocusScope.of(context).requestFocus(FocusNode());
               if (!myFormKey.currentState!.validate()){
                 print('Formulario no valido');
                 return ;
               }
                print(formValues); 
             },
                ),
            
          
            ]
            ),
          ),
        ),
      ),
    );
  }
}

