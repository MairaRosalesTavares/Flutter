void main() {
 
  print ('antes de la peticion ');
  
  httpGet('https://api.hola.com')
    .then( (data){
      print( data.toUpperCase() );
    });
  print ('fin del programa');
}

 Future<String> httpGet (String url ){
   return Future.delayed(
     Duration ( seconds: 3 ), ()=>'Hola'
 );
 }