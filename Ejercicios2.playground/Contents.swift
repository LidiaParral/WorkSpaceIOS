import UIKit

///Ej1. Algoritmo que pida un número y diga si es positivo, negativo o 0.\
print("Ejercicio 1:")
print("Introduce un número")
var numero = 8
print(numero)
if numero == 0 {
    print("El número es cero")
} else if numero < -1 {
    print("El número es negativo")
} else {
    print("El número es positivo")
}

print()
//Ej2. Escribe un programa que lea un número e indique si es par o impar.\
print("Ejercicio 2:")
var numero2 = 8
print(numero2)
if(numero2 % 2 == 0){
      print("Es par")
} else {
    print("Es impar")
}

print()
//Ej3. Escribe un programa que dado un nombre de usuario y una contrase\'f1a \
//y si se ha introducido "pepe" y "asdasd" se indica "Has entrado al sistema", \
print("Ejercicio 3:")
print("Introduce un nombre de usuario")
var nombreUsuario = "pepe"
print("Introduce una contraseña")
var contrasenia = "asdasd"
if(nombreUsuario == "pepe" && contrasenia == "asdasd"){
    print("Has entrado al sistema")
} else {
     print("Se ha producido un error")
}

print()

//Ej4. Programa que dada una cadena por teclado y compruebe si la primera letra es un "/" y la segunda un "*", en caso afirmativo se escribira la palabra entera, en caso contrario escribir "no es correcta".\
print("Ejercicio 4:")
var frase = "/*Esta es la frase"
print(type(of: frase))
var indice = frase.startIndex
print(indice)
var char1 = frase[indice]
indice = frase.index(frase.startIndex, offsetBy: 1)
print(indice)
var char2 = frase[indice]

print(char1)
print(char2)



print()
//Ej5. Algoritmo que dado tres números y los muestre ordenados (de mayor a menor);\
print("Ejercicio 5:")
var num2 = 7
var num3 = 6
var num4 = 8

if num2 > num3 && num2 > num4{
    print("El mayor es",num2)
} else if num3 > num4{
    print("El mayor es",num3)
} else{
    print("El mayor es",num4)
}



print()
//Ej6. //Algoritmo que pida los puntos centrales x1,y1,x2,y2 y los radios r1,r2 de dos circunferencias y las clasifique en uno de estos estados:\
//exteriores\
//tangentes exteriores\
//secantes\
//tangentes interiores\
//interiores\
//concentricas\
//Repetitivas\
print("Ejercicio 6:")
var x1 = 5.0
var y1 = 6.3
var x2 = 5.0
var y2 = 9.25

var radio1 = 5.0
var radio2 = 8.5

var sumaRadios = radio1 + radio2
var restRadios = radio2 - radio1

var distanciaCentros = sqrt(pow(x2 - x1,2) + pow(y2 - y1,2))
print(distanciaCentros)
print("La suma de los radios",sumaRadios)
print("La resta de los radios",restRadios)

if distanciaCentros > sumaRadios{
    print("Exteriores")
} else if distanciaCentros == sumaRadios{
    print("Tangentes Exteriores")
} else if distanciaCentros < sumaRadios {
    print("Secantes")
}else if distanciaCentros == restRadios {
    print("Tangentes Interiores")
}else if distanciaCentros == 0 {
    print("Concentricas")
}else {
    print("Interiores")
}

print()
//Ej7. //Crea una aplicación que pida un número y calcule su factorial (El factorial de un número es el producto de todos los enteros entre 1 y el propio número y se representa por el número seguido de un signo de exclamación. \
print("Ejercicio 7:")
var num: Int = 7
var fact: Int = 1
var n: Int = num + 1
for i in 1...n{
    fact = fact * i
}

print("!",(num), " = " ,(fact))
print("El factorial de !",(num),"es",(fact))


print()
//Ej8. //Algoritmo que cree un array con 10 numeros. Debe imprimir la suma y la media de todos los números introducidos.\
print("Ejercicio 8:")
var array_num : [Int] = []
var suma = 0
var media : Double = 0

for _ in 1...10{
    array_num.append(Int(arc4random_uniform(200) + 0))
}
print("Números generados",array_num)

for num in array_num{
    suma += num
}

media = Double(suma/array_num.count)
print("La suma de los números es",suma,"y la media es",media)

print()
//Ej9. //Algoritmo que cree un array con 10 numeros. El programa debe informar de cuantos números introducidos son mayores que 0, menores que 0 e iguales a 0.\
print("Ejercicio 9:")
var array_numeros = [-1,-1,2,5,0,0,-9,-9,0,4]
var iguales = 0
var mayores = 0
var menores = 0

for i in array_numeros{
    if i == 0 {
        iguales += 1
    } else if i <= 0 {
        menores += 1
    } else {
        mayores += 1
    }
}

print(array_numeros)
print("Total de números iguales =",iguales)
print("Total de números mayores a 0 =",mayores)
print("Total de números menores a 0 =",menores)

print()
//Ej 10 //Escribir un programa que imprima todos los n\'fameros pares entre dos números\
print("Ejercicio 10:")
var numeroUno = 3
var numeroDos = 10
var numpar = 0
var listaNumerosPares = [Int]()

for i in numeroUno...numeroDos{
    if i % 2 == 0 {
        numpar += 1
        listaNumerosPares.append(i)
    }
}

print("Total de números pares:",numpar)
print("Lista de números pares",listaNumerosPares)

print()
//Ej 11 ////Una empresa tiene el registro de las horas que trabaja diariamente un empleado durante la semana (seis d\'edas), as\'ed como el sueldo que recibiré por las horas trabajadas.\
//Las horas estan en un array y el precio hora esta en 30\'80}
print("Ejercicio 11:")
var horas = ["lunes":3,"Martes":4,"Miercoles":2,"Jueves":5,"Viernes":8,"Sabado":6]

let precioHora = 30
var salario = 0

for horas in horas.values{
    salario += precioHora * horas
}

print("Salario total",salario)









