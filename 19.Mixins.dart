
abstract class Animal{}
abstract class Mamifero extends Animal{}
abstract class Ave extends Animal{}
abstract class Pez extends Animal{}
  
abstract class Volador{
    void volar ()=> print('vuela');
  }
abstract class Caminante{
    void caminar ()=> print('camina');
  }
abstract class Nadador{
    void nadar ()=> print('nadar');
  }
class Delfin extends Mamifero with Nadador {
}
class Murcielago extends Mamifero with Caminante, Volador{
} 
class Gato extends Mamifero with Caminante{
}
class Paloma extends Ave with Volador, Caminante{
}
class Pato extends Ave with Caminante, Nadador, Volador{
}
class Tiburon extends Pez with Nadador{
}
class PecesVol extends Pez with Nadador, Volador{
}


  
void main() {
  final delfin= new Delfin();
  print ('delfin:');
  delfin.nadar();
  
  final murcielago= new Murcielago();
  print ('murcielago:');
  murcielago.volar();
  murcielago.caminar();
  
  final gato= new Gato();
  print ('Gato:');
  gato.caminar();
  
  final paloma= new Paloma();
  print ('Paloma:');
  paloma.caminar();
  paloma.volar();
  
  final pato =new Pato();
  print ('Pato:');
  pato.caminar();
  pato.nadar();
  pato.volar();
  
  final tiburon= new Tiburon();
  print ('Tiburon:');
  tiburon.nadar();
  
  final pezvo= new PecesVol();
  print ('Pez Volador:');
  pezvo.nadar();
  pezvo.volar();
  
  
}