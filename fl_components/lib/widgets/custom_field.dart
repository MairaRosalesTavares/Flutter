import 'package:flutter/material.dart';
class CustomInputField extends StatelessWidget {
  
  final String? hintText;
  final String? labeText;
  final String? helperText;
  final IconData? icon;
  final IconData? suffix;
  final TextInputType? keyBT;
  final bool obsText;

  final String fromProperty;
  final Map<String, String> formValues;


  const CustomInputField({
    Key? key, this.hintText, this.labeText, this.helperText, this.icon, this.suffix, this.keyBT, 
   this.obsText = false, required this.fromProperty, required this.formValues,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autofocus: true,
      initialValue: '',
      textCapitalization: TextCapitalization.words,
      keyboardType: keyBT,
      obscureText: obsText,
      onChanged: (value ) => formValues[fromProperty]= value,
      validator: (value){
        if (value == null) return 'Este campo es requerido';
        return value.length< 3? 'Minimo de 3 letras' : null;

      },
      autovalidateMode: AutovalidateMode.onUserInteraction,
      decoration: InputDecoration(
        hintText: hintText,
        labelText: labeText,
        helperText:helperText,
        //counterText: '3 caracteres',
        //prefixIcon: Icon(Icons.verified_user),
        suffixIcon: suffix== null? null: Icon(suffix),
        icon: icon== null ? null: Icon(icon),
        /*   focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.green
            ),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(10),
              topRight: Radius.circular(10)
              )
              ) */
      ),
    );
  }
}