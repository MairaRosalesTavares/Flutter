void main(){
  
  final rawJson = {
    'nombre': 'Tony ',
    'poder': 'Inteligencia'
  };

   final ironman = Heroe.fromJson( rawJson );
  print(ironman);
  
}

class Heroe {
  
  String nombre;
  String poder;
  
  Heroe({ 
    required this.nombre, 
    required this.poder 
  });
  
  Heroe.fromJson( Map<String, String> json  ):
    this.nombre = json['nombre']!,
    this.poder  = json['poder'] ?? 'No tiene poder';
  
  
  
  String toString() {
    return 'Heroe: nombre: ${this.nombre}, poder: ${ this.poder }';
  }
}