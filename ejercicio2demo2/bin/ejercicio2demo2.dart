//import 'package:ejercicio2demo2/ejercicio2demo2.dart' as ejercicio2demo2;

//void main(List<String> arguments) {
//  print('Hello world: ${ejercicio2demo2.calculate()}!');
//}


import 'dart:io';

void main(List<String> arguments) {
  List<Map<String, dynamic>> productos = [];
  int cantidad = 3;

  // Ingreso de productos
  for (int i = 0; i < cantidad; i++) {
    print('Ingrese el nombre del producto \\${i + 1}:');
    String? nombre = stdin.readLineSync();
    print('Ingrese la existencia del producto \\${i + 1}:');
    int existencia = int.parse(stdin.readLineSync() ?? '0');
    print('Ingrese el precio del producto \\${i + 1}:');
    double precio = double.parse(stdin.readLineSync() ?? '0');
    productos.add({
      'nombre': nombre ?? '',
      'existencia': existencia,
      'precio': precio,
    });
  }

  print('\nLista de productos:');
  for (int i = 0; i < productos.length; i++) {
    print('Producto \\${i + 1}: \\${productos[i]['nombre']}, Existencia: \\${productos[i]['existencia']}, Precio: \\${productos[i]['precio']}');
  }

  // Calcular promedio de precios con while
  int j = 0;
  double sumaPrecios = 0;
  while (j < productos.length) {
    sumaPrecios += productos[j]['precio'];
    j++;
  }
  double promedio = productos.isNotEmpty ? sumaPrecios / productos.length : 0;
  print('\nPromedio de precios: \\${promedio.toStringAsFixed(2)}');

  // Encontrar el producto más caro con for-in
  Map<String, dynamic>? productoMasCaro;
  for (var producto in productos) {
    if (productoMasCaro == null || producto['precio'] > productoMasCaro['precio']) {
      productoMasCaro = producto;
    }
  }
  if (productoMasCaro != null) {
    print('\nProducto más caro: \\${productoMasCaro['nombre']} (Precio: \\${productoMasCaro['precio']})');
  }
}

void ejemplolistas(){
   var lista = [1,2,3,4,5];
   print(lista);
   print(lista.length);
   print(lista[3]);
    lista.add(6);
   print(lista);
    lista.remove(2);
    print(lista);
    lista.removeAt(0);
    print(lista);
    lista.insert(0, 10);
    print(lista);
    lista = [];
    print(lista);
}

void ejemploMapas(){
  Map<String, int> alumno = {
    'Juan': 23,
    'Alan': 21,
    'Citlalli': 22
  };
  print(alumno);
  print(alumno.length);
  alumno['Maria'] = 20;
  print(alumno);
  alumno.remove('Alan');
  print(alumno);
}

void ejemploFor(){
  var lista = [1,2,3,4,5];
  for (var  i = lista.length-1; i >=0; i--) {
    print(lista[i]);
  }
  
  for (var elemento in lista) {
    print(elemento);
  }
}

void ejemploWhile(){
  Set lista = {1,2,3,4,5};
  var i = 0;
  while(i < lista.length){
    print(lista.elementAt(i));
    i++;
  }
}

