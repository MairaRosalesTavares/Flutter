void main() {
  
  final nombre = 'Maira';
  saludo( nombre: nombre, mensaje: 'hola' );
  
}
void saludar( String nombre, [ String mensaje = 'Hola' ]) {
  print('$mensaje $nombre');
}
void saludo({ 
  required String nombre, 
  required String mensaje,
 }) {
  print('$mensaje $nombre');
}
