import UIKit

/*
 Ejercicios operadores y variables
 //Ej1. Calcular el perí­metro y área de un rectángulo dada su base y su altura.
 //Ej2. Dados los catetos de un triángulo rectángulo, calcular su hipotenusa. funcion sqrt()
 //Nota: en online no funciona
 //Ej3. Dados dos números, mostrar la suma, resta, división y multiplicación de ambos.
 //Ej4. Escribir un programa que convierta un valor dado en grados Fahrenheit a grados Celsius.
 //Ej5. Calcular la media de tres números pedidos por teclado
 //Ej6. Un vendedor recibe un sueldo base mas un 10% extra por comision de sus ventas,el vendedor desea saber cuanto dinero obtendrá por concepto de comisiones por las tres ventas que realiza en el mes y el total que recibirá en el mes tomando en cuenta su sueldo base y comisiones.
 //Ej7. Un alumno desea saber cual será su calificación final en la materia de IOS
 //    Dicha calificación se compone de los siguientes porcentajes:
 //    * 55% del promedio de sus tres calificaciones parciales.
 //    * 30% de la calificación del examen final.
 //    * 15% de la calificación de un trabajo final.
 //Ej8. Escribir un algoritmo para calcular la nota final de un estudiante, considerando que: por cada respuesta correcta 5 puntos, por una incorrecta -1 y por respuestas en blanco 0. Imprime el resultado obtenido por el estudiante.
 //Ej9. Calcula el sueldo de un trabajador, cuyo valor es su sueldo base más un numero de horas extra trabajadas, pero teniendo en cuenta que dicho numero de horas puede ser nulo*/


//Ejercicio 1:
print("Ejercicio 1");
let base = 10;
let altura = 7;
let area = base * altura;
let perimetro = (2*base) + (2*altura);

print("El área del rectángulo es " + String(area) + " y el perímetro es "
+ String(perimetro))

print()

//Ejercicio 2:
print("Ejercicio 2")
var cateto1 = 5.0
var cateto2 = 7.0
//Para utilizar la función SQRT, hay que importar (import UIkit)
var hipotenusa = sqrt((cateto1*cateto1) + (cateto2*cateto2))
print("La hipotenusa es: \(hipotenusa)")

print()

//Ejercicio 3:
print("Ejercicio 3")
var num1 = 2
var num2 = 6

var suma = num1+num2
print("La suma es: \(suma)")
var resta = num1-num2
print("La resta es: \(resta)")
var mult = num1*num2
print("La multiplicacion es: \(mult)")
var div = num2/num1
print("La division es: \(div)")

print()

//Ejercicio 4:
print("Ejercicio 4")
var grados = 35;
var farenheit = (grados*2) - (grados/5);
farenheit = farenheit + 32;

print(String(grados) + " C equivalen a " + String(farenheit)
    + " Farenheit");

print()

//Ejercicio 5:
print("Ejercicio 5");
var valor1 = 20
var valor2 = 43
var valor3 = 12
var media = (valor1 + valor2 + valor3)/3
print("La media es: \(media)")


print()

//Ejercicio 6:
print("Ejercicio 6")
var venta1, venta2, venta3 : Double;
print("Las 3 ventas del mes");
venta1 = 1000.0;
venta2 = 2000.0;
venta3 = 800.0;
print(venta1, venta2, venta3);


var comision1 = venta1 * 1.1
print("La comisión1 es \(comision1)");
var comision2 = venta2 * 1.1
print("La comisión2 es \(comision2)");
var comision3 = venta3 * 1.1
print("La comisión1 es \(comision3)");

var sueldo = comision1 + comision2 + comision3
print("El sueldo total es: \(sueldo)")
print()

//Ejercicio 7:
print("Ejercicio 7")
var nota1, nota2, note3, promedio, examen_final, trabajo_final, notaFinal : Double;
nota1 = 5.8;
nota2 = 8.75;
note3 = 7.6;

promedio = (nota1 + nota2 + note3)/3;
//print("El promedio de las notas parciales: " + String(promedio))
print("El promedio de las notas parciales: \(promedio)")

examen_final = (8.4 * 55)/100;
//print("La nota del examen final es " + String(examen_final))
print("La nota del examen final es: \(examen_final)")

trabajo_final = (9 * 15)/100;
//print("La nota del trabajo final es " + String(trabajo_final))
print("La nota del trabajo final es: \(trabajo_final)")

notaFinal = promedio + examen_final + trabajo_final
//print("La nota final del alumno es: " + String(notaFinal))
print("La nota final del alumno es: \(notaFinal)")


print()

//Ejercicio 8:
print("Ejercicio 8:")
var respuCorrec = 5
var respuFall = 4
var respu0 = 1
var puntos = (respuCorrec*5) + (respuFall*(-1)) + (respu0*0)
print("Puntuación final: \(puntos)")


print()

//Ejercicio 9:
print("Ejercicio 9:")
var sueldoOriginal = 2000
var horas : Int? = 5
let precioHora = 50
var totalExtra = precioHora * (horas ?? 0)
//Operador nil coalsing
//(horas ?? 0) = es igual a decir que si el valor HORAS es NIL(nulo), se pueda ejecutar el programa
var sueldoFinal = sueldoOriginal + totalExtra
print("Sueldo Final: \(sueldoFinal)")






