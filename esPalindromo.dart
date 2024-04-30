import 'dart:io';

bool esPalindromo(String cadena) {
  String cleanedString =
      cadena.toLowerCase().replaceAll(RegExp('[^a-z0-9]'), '');

  String reversedString = cleanedString.split('').reversed.join('');

  return cleanedString == reversedString;
}

void main() {
  String cadena1 = "Anita,lava la ;tina";
  String cadena2 = "racecar";
  String cadena3 = "hello world";

  print(esPalindromo(cadena1)); // true
  print(esPalindromo(cadena2)); // true
  print(esPalindromo(cadena3)); // false

  print("Escribe una palabra o frase para comprobar si es palindroma:");
  String? inputx = stdin.readLineSync();
  if (inputx != null) {
    print("Es Palindroma: ${esPalindromo(inputx)}");
  } else {
    print("Entrada No es Valida");
  }
}
