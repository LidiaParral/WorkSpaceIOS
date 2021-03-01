//Ver los tipos más importantes en Swift y algunos métodos
// y formas de trabajar

//Enteros
let numero : Int //declaración
let numerosDeLaMano = 5 // creación con inferencia de tipos

//Para números grandes
let numeroEstrellas = 1_000_000_000_000


print(type(of:numero))
print(type(of: numerosDeLaMano))
print(type(of: numeroEstrellas))

//Otros sistemas numéricos
let nBinario = 0b101;
let nOctal = 0o21;
let nHexadecimal = 0xAAFF;

print(nBinario)
print(nOctal)
print(nHexadecimal)

//Double
//Son números en coma flotante hasta 64 bits, con precisión de 15 dígitos
var decimalUno : Double
decimalUno = 12.12345
var decimalConExponente = 1.21289e4
print(decimalUno)
print(decimalConExponente)

//Float
//Son números en coma flotante hasta 32 bits, con precisión de 5 dígitos.
var numeroFloat : Float = 12.1268

//Booleanas
var verdadero : Bool = true
var falso = false


//Caracteres, solo comillas dobles para un carácter
let caracter : Character = "l"


//Strings
//Representan cadenas de caracteres
var cadena = "Esto es un string muy bonito"
var cadena2 : String = "Esto sería otra cadena"

//Se puede crear el objeto String de dos maneras distintas
//Ambas maneras son equivalentes
cadena = "Homer"
cadena2 = String("Homer")

//Comparación de cadenas
if cadena == cadena2 {
    print("Las cadenas son iguales")
}

//String vacío
if cadena.isEmpty{
    print("Cadena vacía")
} else {
    print("Cadena no está vacía")
}


//Mutabilidad
//Un objeto es inmutable cuando no podemos cambiar su estado durante su ciclo de vida
//El estado de un objeto es el valor de sus atributos
//En Swift hacemos un String mutable con "var"
var stringMutable = "Caballo"
stringMutable += " y yegua"

//Hacemos inmutable con let
let stringInmutable = "Vaca"
//stringInmutable += " y toro" // No se puede cambiar el valor del atributo cuando sea inmutable porque da error.

//Recorrer un string
cadena = "Estoy feliz 😄"
print(cadena)

//Podemos usar un for equivalente a for-each en Java
//Lo imprime por pantalla caracter a caracter de la cadena seleccionada
//Muestra el número de caracteres de la cadena, contando también los espacios en blanco
for caracter in cadena {
    print(caracter)
}

//Podemos crear un String a partir de un array de caracteres
//Se declara el tipo de array dentro de corchetes
let caracteresDeGato : [Character] = ["C","A","T","!"]
//Usamos el constructor String y le pasamos el array, en
// Swift los objetos se crean sin "new".
//Significa lo mismo que en java new String. let stringDeGato = new String(caracteres)
let stringDeGato = String(caracteresDeGato)
print(stringDeGato)


//Concatenación
//Tipos de concatenación
let string1 = "Hola "
let string2 = "¿Cómo estás?"
//Concatenar los string mediante el simbolo +
var string3 = string1 + string2

//También se puede concatenar con APPEND
string3.append(" Estoy bien 🙂")
print(string3)

//También se puede concatenar con "+="
string3 += " Me alegro mucho."


//Interpolación
var numeroDoble : Double = 84.5976
string3.append(" Mira que número acabo de calcular: ")
//No se puede concatenar a string otro tipo de variable que no sea string, hay que convertir el entero en string
string3 += String(numeroDoble)
print(string3)

string3 += " y ahora pongo otra vez el número \(numeroDoble)"
print(string3)


//Caracteres unicodes
let sonrisa = "😁"
let sonrisa2 = "\u{1F601}" //código unicode de cada emoji
//*Contrabarra se escribe ALT GR + boton de <>
print(sonrisa)
print(sonrisa2)


//Comparaciones de NIL, se hacen igual
var cadena3 = "Goku"
//Cadena optional
var cadena4 : String! = "Goku"
cadena4 = nil
//*La exclamación quiere decir que se desenvuelve sólo
if(cadena3 == cadena4){
    print("Son iguales")
}


//Strings multilinea
//Caracteristica de swift por el cual podemos crear
//de manera sencilla textos con varias líneas
var html = "<html>" //*simbolos <> flecha + boton debajo del espace
html += "<head><title>Mi página web</title></head>"
html += "<body></body>"

//Podemos usar strings multilinea y se abre y cierra por
//3 comillas
var htmlMultiLinea = """
<html>
    <head>
        <title>Mi pagina web</title>
    </head>
    <body>
        <h1>Mi pagina</h1>
    </body>
</html>
"""
print(htmlMultiLinea)

//Contar caracteres de un STRING
print("El número de caracteres de la palabra \(cadena3) es \(cadena3.count)")

//Posicionamientos
//Tratamiento de caracteres de STRING
//String es un conjunto de caracteres con alguna
//peculiaridad...
let saludo = "Guten Tag!"
//Cada posición del string tiene un "tipo indice"
//asociado, que se le conoce como "Sring.Index"
//El cual corresponde con la posición de cada caracter del String
print(saludo)
//Para manejar las posiciones de un String, hay
//que jugar con una serie de funciones y
//propiedades
//starIndex -> Es una propiedad que representa la PRIMERA LETRA de la cadena
//endIndex -> Es una propiedad que representa la SIGUIENTE POSICIÓN a la ÚLTIMA LETRA de la cadena
print(saludo.startIndex) //Indica la posición de la letra G
print(saludo[saludo.startIndex]) //Muestra la G que es la primera posición

//ERROR
//print(saludo[saludo.endIndex])
//La clase String tiene un método que se llama
//"index" que nos devuelve un caracter de la
//cadena, bajo algunas condiciones
//Ejemplo: Sacar el último caracter
print(saludo.index(before: saludo.endIndex))

//Acceder a la posición que está ANTES que la última posición ENDINDEX.
//Aparece la exclamación !
var indice = (saludo.index(before: saludo.endIndex))
print(saludo[indice])

//Podemos contar caracteres desde el principio
//Ejemplo: 7 caracteres desde el principio
//La función index, está sobrecargada, en este
//caso primero le pasamos desde donde queremos
//empezar y a continuación le damos cuantos
//caracteres queremos recorrer
//Devuelve el caracter "a"
indice = saludo.index(saludo.startIndex,
offsetBy: 7)
print(saludo[indice])

//Se muestra el caracter "T"
indice = saludo.index(saludo.endIndex,
offsetBy: -4)
print(saludo[indice])

//Insertar caracteres en una posición concreta
var bienvenido = "Welcome"
//Añadir la exclamación al final de la variable
//bienvenido, para esto habría que saber la
//posición en la que queramos insertarlo
bienvenido.insert("!", at: bienvenido.endIndex)
print(bienvenido)


//Casting, cambiar de tipos
//En Swift debemos usar los constructores de clase para cambiar de tipo
let numeroEntero = 12 // tipo int, por inferencia
let numDoble = Double(numeroEntero)
print(type(of: numDoble))
print(numDoble)

//si hay RIESGO DE CASTEO, Swift devuelve un optional
cadena = "25"
let enteroConvertido = Int(cadena)
//Mostrar por pantalla: Optional + la cadena convertida en entero
//En caso de que no se pueda convertir, apuntaría a NIL
print(enteroConvertido ?? "valor no convertido")
//Poner "??" para desenvolver el optional



































