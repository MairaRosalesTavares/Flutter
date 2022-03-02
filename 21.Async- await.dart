void main() async {
  print('Antes de la petición');
  final data = await httpGet('https://api.nasa.com');
  print( data );
  print('Fin del programa');
    
}

Future<String> getNombre( String id ) async {
  return '$id - Fernando';
} 

Future<String> httpGet( String url ) {
  return Future.delayed( 
    Duration( seconds: 3 ), () =>'Hola' 
  );
}