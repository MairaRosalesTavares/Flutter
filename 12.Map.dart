void main() {
  
   Map persona = {
     'nombre': 'Fernando',
     'edad': 35,
     'soltero': false,
     true: false,
     1: 100,
     2: 500
   };
  
  Map<String, dynamic> persona2 = {
    'nombre': 'Fernando',
    'edad': 35,
    'soltero': false,
  };
  
  persona.addAll({ 'segundoNombre': 'Juan' });
  
  print( persona );
   print( persona2 );
}