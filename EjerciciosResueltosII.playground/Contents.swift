//FUNCIONES Y OPERADORES ARITMETICOS
//Sumar dos números y devolver el resultado:
func suma(_ num1:Int, _ num2:Int) -> Int {
    return num1 + num2
}
let num1 = 5
let num2 = 8
print("\(num1) + \(num2) = \(suma(num1, num2))")

print()

//Calcular el número de segundos que suman en total un número determinado de años:
func segundosAnyo(_ anyos:Int) -> Int {
    let dias = 365
    let horas = 24
    let segundos = 3600
    return dias * horas * segundos * anyos
}
let anyos = 3
print("La cantidad de segundos en \(anyos) años es \(segundosAnyo(anyos))")

print()
//Calcular la cantidad total de píxeles que tiene una pantalla dada su altura y anchura en píxeles:
func pixeles(alto:Int, ancho:Int) -> Int {
    return(alto * ancho)
}
let alto = 720
let ancho = 480
print("La cantidad de píxeles de una pantalla de \(alto)x\(ancho) es \(pixeles(alto:720, ancho:480))")

print()

//Intercambiar el valor de dos variables:
func intercambiar(_ a:inout Int, _ b:inout Int) {
    let aux = a
    a = b
    b = aux
}
var num1 = 5
var num2 = 10
intercambiar(&num1, &num2)
print("El primer número es: \(num1) y el segundo es: \(num2)")

print()

//Dado un número, imprimir el último dígito:
func ultimo(_ num:Int) -> Int {
    return num % 10
}
let num = 2479
print("La última cifra de \(num) es \(ultimo(num))")


print()

//Dada la edad de un perro, calcular la edad equivalente en humanos, teniendo en cuenta que un año para una persona equivale a 7 años para un perro:
func edadHumano(_ edadPerro:Int) -> Int {
    return edadPerro * 7
}
let edadPerro = 7
print("\(edadPerro) años de un perro equivalen a \(edadHumano(edadPerro)) años de un humano")

print()

//FUNCIONES Y CONTROL DE FLUJO
//Dado un número, comprobar si es par o no:
func esPar(_ num:Int) -> Bool {
    return num % 2 == 0
}

let num = 24

// Con if
if esPar(num) {
    print("El numero \(num) es par")
}
else {
    print("El numero \(num) es impar")
}

// Con el operador ?
print("El numero \(num) es " + (esPar(num) ? "par" : "impar"))


print()
//Dados dos números, comprobar si el primero es divisible entre el segundo:
func esDivisible(_ num1:Int, _ num2:Int) -> Bool {
    return num2 != 0 && num1 % num2 == 0
}

let num1 = 3
let num2 = 1

// Con if
if esDivisible(num1, num2) {
    print("El número \(num1) es divisible entre \(num2)")
}
else {
    print("El número \(num1) no es divisible entre \(num2)")
}

// Con el operador ?
print("El número \(num1) \(esDivisible(num1, num2) ? "" : "no") es divisible entre \(num2)")


print()

//FUNCIONES Y TUPLAS
//Dada una cantidad determinada de chicos y chicas, calcular el porcentaje de cada uno respecto al total:
func calcularPorcentajes(hombres:Int, mujeres:Int) -> (hombres:Int, mujeres:Int) {
    let total = hombres + mujeres
    let porcentajeHombres = (hombres * 100) / total
    let porcentajeMujeres = (mujeres * 100) / total

    return (porcentajeHombres, porcentajeMujeres)
}

let hombres = 12
let mujeres = 15
let porcentaje = calcularPorcentajes(hombres:12, mujeres:15)

print("De \(hombres + mujeres) personas, \(mujeres) son mujeres y \(hombres) son hombres, es decir, \(porcentaje.hombres)% de hombres y \(porcentaje.mujeres)% de mujeres")

print()

//Disponemos de dos tuplas de tipo (Int,Int) que representan dos fracciones. El primer valor en cada tupla representa el numerador y el segundo valor representa el denominador. Utilizando una función, crear una nueva tupla también de tipo (Int,Int) que contenga el resultado de sumar las dos fracciones:
func suma(_ fraccion1:(Int, Int), _ fraccion2:(Int, Int)) -> (Int, Int) {
    let numerador = fraccion1.0 * fraccion2.1 + fraccion2.0 * fraccion1.1
    let denominador = fraccion1.1 * fraccion2.1

    return (numerador, denominador)
}

let fraccion1 = (1, 2)
let fraccion2 = (2, 3)
print("La suma de \(fraccion1) y \(fraccion2) es \(suma(fraccion1, fraccion2)))

print()


//Escribir el código necesario para jugar a piedra, papel, tijeras, cumpliendo las siguientes especificaciones:

//Se debe definir una enumeración con tres posibles casos:  .piedra, .papel, .tijeras.
//Se debe definir una segunda enumeración con tres posibles casos:  .gana, .empata, .pierde.
//Escribir una función que reciba la elección de cada jugador y devuelva el resultado correspondiente al primer jugador.
enum Mano {
    case piedra, papel, tijeras
}

enum Resultado {
    case gana, empata, pierde
}

func jugar(jugador1:Mano, jugador2:Mano) -> Resultado {
    if jugador1 == jugador2 { return .empata }

    if jugador1 == .piedra  && jugador2 == .tijeras ||
       jugador1 == .papel   && jugador2 == .piedra  ||
       jugador1 == .tijeras && jugador2 == .papel { return .gana }

    return .pierde
}

print(jugar(jugador1:.papel, jugador2:.tijeras))


print()
