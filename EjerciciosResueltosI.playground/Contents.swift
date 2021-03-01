//Dadas dos variables, calcular la suma, almacenar el resultado en otra variable e imprimir el resultado:
let num1 = 5
let num2 = 8
let suma = num1 + num2
print("La suma es",suma)

//Calcular el número de segundos en un año almacenando dicho valor en una variable:
let dias = 365
let horas = 24
let segundos = 3600
let segundoAnio = dias * horas * segundos
print(segundoAnio)

print()
//Partiendo de la anchura y la altura de una pantalla en píxeles, calcular el número total de píxeles de dicha pantalla guardando el resultado en otra variable:
let alto = 720
let ancho = 480
let pixeles = alto * ancho
print("La cantidad de pixeles es",pixeles)

print()
//Dadas dos variables, intercambiar sus valores:
var num3 = 4
var num4 = 8

var aux = num3
num4 = num3
aux = num3
print("EL primer número es",num3,"y el segundo número es",num4)

print()
//Dado un número, imprimir el último dígito:
let num = 2479
print("La última cifra del número",num,"es",num%10)

print()
//Dada la edad de un perro, imprimir la edad equivalente en humanos, teniendo en cuenta que un año para una persona equivale a 7 años para un perro:
let edadPerro = 7
let edadHumano = edadPerro * 7
print("La edad del humano es",edadHumano,"y la del perro es",edadPerro)


print()

//Dada una cantidad determinada de chicos y chicas, imprimir el porcentaje de cada uno respecto al total:
let hombres = 12
let mujeres = 15
let total = hombres + mujeres

let porHombres = (hombres*100)/total
let porMujeres = (mujeres*100)/total
print("El porcentaje de hombres es de",porHombres,"% y el porcentaje de mujeres es",porMujeres,"%")

print()

//CONTROL DE FLUJO
//Dados dos números, compararlos e imprimir el mayor de ellos:
var num5 = 7
var num6 = 5
if(num5 > num6){
    print("El número",num5,"es mayor que el número",num6)
} else if (num6 > num5){
    print("El número",num6,"es mayor que el número",num5)
}

print()
//Dado un número, imprimir un mensaje indicando si es par o impar:
let num7 = 23
if(num7%2 == 0){
    print("El número",num7,"es par")
} else {
    print("El número",num7,"es impar")
}

//Otra forma:
// Con el operador ?
print("El numero \(num7) es " + (num7 % 2 == 0 ? "par" : "impar"))

print()
//Dados dos números, imprimir un mensaje diciendo si el primero es divisible entre el segundo o no:
var num8 = 6
var num9 = 2
if(num9 != 0 && num8%num9 == 0){
    print("El número",num8,"es divisible entre el número",num9)
}
else if(num9 != 0 && num8%num9 != 0){
    print("El número",num8,"no es divisible entre el número",num9)
}
else {
    print("No se puede dividir entre cero")
}


print()
//Dadas tres variables, comparar el valor que contienen e indicar si todas ellas son diferentes, o si por el contrario, dos variables o las tres contienen el mismo valor:
var num10 = 2
var num11 = 3
var num12 = 2
if (num10 == num11) || (num10 == num12) || (num11 == num12){
    print("Al menos dos de las variables son iguales")
}
else{
    print("Todas las variables son distintas")
}

print()

//Disponemos de dos variables que indican los días que hace que hemos comprado leche y huevos respectivamente. Si hace más de 2 días que compramos la leche deberemos imprimir que ya está caducada, y si hace más de 7 días que compramos los huevos, imprimiremos que están caducados. Si la leche y los huevos no estén caducados, se deberá imprimir un mensaje indicando que ambos están en buen estado:

var diasLeche = 5
var diasHuevos = 1

if diasHuevos <= 2 && diasLeche <= 7 {
    print("La leche y los huevos están en buen estado")
} else {
    if diasLeche > 2 {
        print("La leche está caducada")
    }
    if diasHuevos > 7 {
        print("Los huevos están caducados")
    }
}


print()

//Dado un entero que indique un año cualquiera, indicar si dicho año es bisiesto o no, teniendo en cuenta que un año es bisiesto si es divisible entre 4 y no es divisible entre 100, y también si es divisible entre 400 (2000 y 2400 sí son bisiestos. 2100, 2200 y 2300 no lo son):
let anyo = 2018

let divisibleEntre4 = anyo % 4 == 0
let divisibleEntre100 = anyo % 100 == 0
let divisibleEntre400 = anyo % 400 == 0

if divisibleEntre4 && (!divisibleEntre100 || divisibleEntre400) {
    print("El año \(anyo) es bisiesto")
}
else {
    print("El año \(anyo) no es bisiesto")
}



print()
//Generar un número aleatorio entre 1 y 3 (ambos incluidos) simulando que lanzamos una moneda, de forma que se imprima uno de los tres posibles valores (cara, cruz o canto). Se puede utilizar la función random de la siguiente forma: Int.random(in:1...3)

let moneda = Int.random(in:1...3)

if moneda == 1 {
    print("Cara")
}else if moneda == 2 {
    print("Cruz")
}
else {
    print("Canto")
}

print()
//Dados cuatro valores numéricos, imprimir el más pequeño:
let a = 7, b = 4, c = 2, d = 6
var min = a

if b < min {
    min = b
}
if c < min {
    min = c
}
if d < min {
    min = d
}
print(min)


print()
//Imprimir si un número es divisible entre 3 y 5 al mismo tiempo:
let numero = 135

// Con if
if numero % 3 == 0 && numero % 5 == 0 {
    print("\(numero) es divisible entre 3 y 5")
} else {
    print("\(numero) no es divisible entre 3 y 5")
}

//Otra forma: Con el operador ?
print("\(numero) \(numero % 3 == 0 && numero % 5 == 0 ? "" : "no")es divisible entre 3 y 5")

print()
//Escribir un switch que imprima las siguientes cadenas utilizando los siguientes intervalos dependiendo de una variable que contiene una distancia:

//«Aquí» si la distancia es 0.
//«Bastante cerca» si la distancia es mayor que 0 y menor que 5.
//«Cerca» si la distancia está entre 5 y 15.
//«Más o menos cerca» si la distancia está entre 15 y 40, ambos incluidos.
//«Lejos» si la distancia es mayor que 40.
let distancia:UInt = 15

switch distancia {
    case 0:
        print("Aquí")
    case 1..<5:
        print("Bastante cerca")
    case 5..<15:
        print("Cerca")
    case 15...40:
        print("Más o menos cerca")
    default:
        print("Lejos")
}

print()

//Utilizando un switch imprimir la cadena «Eres un superhéroe» si tu nombre es «Clark Kent» o «Bruce Wayne», y «Eres una persona normal» en caso contrario:
let nombre = "Bruce Wayne"

switch nombre {
    case "Clark Kent", "Bruce Wayne":
        print("Eres un superhéroe")
    default:
        print("Eres una persona normal")
}

//ARRAYS
//Crear de dos formas diferentes un array que contenga los siguientes enteros 5, 8, 10, 16, 23, 40:
var array1: [Int] = [5, 8, 10, 16, 23, 40]
var array2 = [5, 8, 10, 16, 23, 40]
print(array1)
print(array2)

print()
//Crear de dos formas diferentes un array que no pueda ser modificado y que contenga los siguientes enteros: 5, 8, 10, 16, 23, 40
let array3: [Int] = [5, 8, 10, 16, 23, 40]
let array4 = [5, 8, 10, 16, 23, 40]
print(array3)
print(array4)

print()
//Añade de dos formas diferentes los valores 118, 137, y 5615 al final del siguiente array: [5, 8, 10, 16, 23, 40]
var array5 = [5, 8, 10, 16, 23, 40]
var array6 = [5, 8, 10, 16, 23, 40]
let array7 = [118, 137, 5615]

array5.append(contentsOf: array7)
array6 += array7

print(array5)
print(array6)

print()
//Reemplazar el valor 16 con el valor 45 en el siguiente array: [5, 8, 10, 16, 23, 40]
var array8 = [5, 8, 10, 16, 23, 40]
array8[3] = 45

print(array8)

print()
//Reemplaza los valores 8, 10, y 16 con los valores 1, 2, 3, 4, 5 y 6 en el siguiente array: [5, 8, 10, 16, 23, 40]
var array9 = [5, 8, 10, 16, 23, 40]
array9[1...3] = [1, 2, 3, 4, 5, 6]

print(array9)

print()

//ENUMERACIONES Y TUPLAS
//Definir un array de tuplas que tengan 2 campos cada una, para guardar el nombre y primer apellido de 5 personas:
var personas = [(nombre: "Juan", apellido: "Rubio"),
                (nombre: "Pepe", apellido: "García"),
                (nombre: "Luis Enrique", apellido: "Peinado"),
                (nombre: "Álvaro", apellido: "Sánchez"),
                (nombre: "Pablo", apellido: "Ruiz")]

for persona in personas { print(persona) }

print()
//Partiendo de dos valores cualesquiera, formar una tupla indicando cuál de esos dos valores es el menor y cuál el mayor:
let a1 = 5, b1 = 6
let resultado = a1 < b1 ? (menor:a1, mayor:b1) : (menor:b1, mayor:a1)
print(resultado)

print()
//Definir una enumeración para tener un listado de varios tipos de dispositivos de Apple:
enum DispositivoApple {
    case iPhone
    case iPad
    case iWatch
}

let miDispositivo = DispositivoApple.iPhone
print(miDispositivo)


print()
//Disponemos de un array que indica los movimientos del personaje de un videojuego, y también conocemos su posición original. Un paso .arriba incrementará la coordenada y en 1. Un paso .abajo decrementará la coordenada y en 1. Un paso a la  .derecha incrementará la coordenada x en 1. Un paso a la .izquierda decrementará la coordenada x en 1. Se debe imprimir la ubicación final del personaje después de realizar los movimientos indicados:
enum Direccion {
    case arriba, abajo, izquierda, derecha
}

var ubicacion = (x: 0, y: 0)
let pasos:[Direccion] = [.abajo, .abajo, .derecha, .arriba]

for paso in pasos {
    switch paso {
        case .arriba:    ubicacion.y += 1
        case .abajo:     ubicacion.y -= 1
        case .derecha:   ubicacion.x += 1
        case .izquierda: ubicacion.x -= 1
    }
}

print(ubicacion)

print()
//Escribir el código necesario para jugar a piedra, papel, tijeras, utilizando una enumeración con los tres posibles casos:  .piedra, .papel, .tijeras:
enum Mano {
    case piedra, papel, tijeras
}

let jugador1 = Mano.papel
let jugador2 = Mano.tijeras

if jugador1 == jugador2 {
    print("Empate")
}
else if jugador1 == .piedra  && jugador2 == .tijeras ||
        jugador1 == .papel   && jugador2 == .piedra  ||
        jugador1 == .tijeras && jugador2 == .papel {
    print("Gana jugador 1")
}
else {
    print("Pierde jugador 1")
}


print()
//Utilizando una enumeración de tipos de monedas y un array de tuplas que especifique el número de monedas que tenemos de cada tipo, calcular e imprimir el cantidad total de dinero:
enum TipoMoneda {
    case cents5, cents10, cents20, cents50, euro1, euro2
}

let monedas:[(cantidad:Int,tipo:TipoMoneda)] = [(2,.cents10), (5,.euro1), (3,.euro2)]

var totalMon = 0

for (cantidad, tipo) in monedas {
    switch tipo {
        case .cents5:
            print("\(cantidad) monedas de 5 céntimos")
            totalMon = totalMon + cantidad * 5
        case .cents10:
            print("\(cantidad) monedas de 10 céntimos")
            totalMon = totalMon + cantidad * 10
        case .cents20:
            print("\(cantidad) monedas de 20 céntimos")
            totalMon +=  cantidad * 20
        case .cents50:
            print("\(cantidad) monedas de 50 céntimos")
            totalMon += cantidad * 50
        case .euro1:
            print("\(cantidad) monedas de 1 euro")
            totalMon += cantidad * 100
        case .euro2:
            print("\(cantidad) monedas de 2 euros")
            totalMon += cantidad * 200
    }
}

print("Total: \(Double(totalMon)/100.0) euros")


print()

//Disponemos de un array con los bocadillos que quieren pedir unos amigos en un bar. Antes de llamar al camarero se debe crear otro array que contenga tuplas indicando el tipo de bocadillo y el número de bocadillos que quieren pedir de ese tipo:
enum TipoBocadillo {
    case tortilla, calamares, queso
}

let bocadillos:[TipoBocadillo] = [.tortilla, .tortilla, .calamares, .queso, .calamares, .calamares, .queso]

var listaCamarero:[(tipo:TipoBocadillo, cantidad:Int)] = []

for bocadillo in bocadillos {
    var i = 0
    while i < listaCamarero.count {
        if (listaCamarero[i].tipo == bocadillo) {
            listaCamarero[i].cantidad += 1
            break
        }
        i += 1
    }
    if i >= listaCamarero.count {
        listaCamarero += [(bocadillo, 1)]
    }
}

for bocadillo in listaCamarero {
    print("\(bocadillo.cantidad) bocadillos de \(bocadillo.tipo)")
}

print()

