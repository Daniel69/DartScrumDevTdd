// Copyright (c) 2015, <your name>. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

/// The scrumtdd library.
library scrumtdd;

import 'utils/utilities.dart';

class FizzBuzz{
  
String resultado;

FizzBuzz([this.resultado=""]);
  
String obtenerResultado(int numero) =>
determinarResultado(numero);

String determinarResultado(int numero) =>
esMultiplo3Y5(numero);


String esMultiplo3Y5(int numero) =>
esMultiplo(numero, MULTIPLO_3) && esMultiplo(numero, MULTIPLO_5) ? resultado = RESULTADO_FIZZ_BUZZ : esMultiplo3(numero);


String esMultiplo3(int numero)=>
esMultiplo(numero, MULTIPLO_3) ?  resultado = RESULTADO_FIZZ : esMultiplo5(numero);


String esMultiplo5(int numero)=>
esMultiplo(numero, MULTIPLO_5) ? resultado = RESULTADO_BUZZ : resultado = numero.toString();


bool esMultiplo(int numero, int multiplo)=>
numero%multiplo==RESULTADO_RESIDUO ? true : false;


}
