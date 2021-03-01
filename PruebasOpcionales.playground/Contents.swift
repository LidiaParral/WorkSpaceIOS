
let colores = ["azul", "negro", "verde", "rojo", "amarillo"]
//Devuelve el primer color(AZUL) del array COLORES
//let colores = [String]()
//Devuelve NIL en la primera posición del array COLORES

let primerColor = colores.first

//primerColor es String? en lugar de String

//NIL
var segundoColor: String? = "negro"
print("\(segundoColor)")
//Devuelve:Optional(“negro”)

segundoColor = nil
print("\(segundoColor)")
//Devuelve: NIL


let colorPorDefecto = "Azul"
var colorDefinidoPorUsuario : String?//se inicializa nil
//colorDefinidoPorUsuario = "Verde", en esta caso devolvería en el valor de COLOR = "Verde"
var color = (colorDefinidoPorUsuario ?? colorPorDefecto)
print(color) //Devuelve el valor de COLOR = "Azul"

//directamente podriamos hacer
print(colorDefinidoPorUsuario ?? "No hay color")


print()
//ERROR - valor no convertido
var cadena = "pepe"
let enteroConvertido = Int(cadena)//esto seria un optional, en caso de que no pueda convertirlo
                                //apuntaria a nil
print(enteroConvertido ?? "valor no convertido")//ponemos "!" para desenvolver el optional

print()
//Convertir una variable STRING en una variable INT, con optionals
var cadena2 = "25"
let enteroConver = Int(cadena2)//esto seria un optional, en caso de que no pueda convertirlo
                                //apuntaria a nil
print(enteroConver!)//ponemos "!" para desenvolver el optional





