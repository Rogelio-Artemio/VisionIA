import 'dart:io';

void main() {
  List<Map<String, dynamic>> productos = [];

  // Ingresar 3 productos
  for (int i = 0; i < 3; i++) {
    print('Producto ${i + 1}:');
    stdout.write('Nombre: ');
    String nombre = stdin.readLineSync() ?? '';
    stdout.write('Existencia: ');
    int existencia = int.parse(stdin.readLineSync() ?? '0');
    stdout.write('Precio: ');
    double precio = double.parse(stdin.readLineSync() ?? '0');

    productos.add({
      'nombre': nombre,
      'existencia': existencia,
      'precio': precio,
    });
    print('');
  }

  // Mostrar los datos de cada producto
  print('--- Lista de productos ---');
  for (int i = 0; i < productos.length; i++) {
    print('Producto ${i + 1}: ${productos[i]}');
  }

  // Calcular el promedio de precios usando while
  int j = 0;
  double sumaPrecios = 0;
  while (j < productos.length) {
    sumaPrecios += productos[j]['precio'];
    j++;
  }
  double promedio = sumaPrecios / productos.length;
  print('\nPromedio de precios: \$${promedio.toStringAsFixed(2)}');

  // Encontrar el producto más caro usando for-in
  Map<String, dynamic> productoMasCaro = productos[0];
  for (var producto in productos) {
    if (producto['precio'] > productoMasCaro['precio']) {
      productoMasCaro = producto;
    }
  }
  print('\nProducto más caro: ${productoMasCaro['nombre']} (\$${productoMasCaro['precio']})');
}