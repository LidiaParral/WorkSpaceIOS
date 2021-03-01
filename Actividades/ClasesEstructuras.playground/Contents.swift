/*
 Implementar las siguientes clases o estructuras y sus relaciones (diseño del modelo):\
 \
 Queremos formar un ordenador, el ordenador tendrá las siguientes propiedades:\
     1) precio\
     2) nombre del equipo\
     3) Varios modulos de memoria ram, la ram tendrá las siguientes propiedades\
             a) capacidad de almacenamiento\
             b) fabricante\
             c) si tiene RGB\
     4) Tendremos un procesador, el procesador tendrá las siguientes propiedades\
             a) velocidad del procesador\
             b) numero de cores\
             c) numero de hilos\
             d) fabricante\
     5) podremos tener varios unidades de almacenamiento, tendrán las siguientes propiedades\
             a) capacidad de almacenamiento\
             b) fabricante\
             c) tipo de unidad (HD, SSD, Nvme)\
     6) Tendrá una tarjeta grafica, con las siguientes propiedades\
             a) ram\
             b) consumo\
             c) Cuda cores\
             d) velocidad\
 \
 Tareas:\
 1) implementar el sistema de clases o de estructuras (o mezcla)\
 2) Instanciar un ordenador completo con todos sus objetos con información
 */
class Ordenador{
    var precio = 0.0
    var nombreEquipo = ""
    var memoriaRam1 = MemoriaRam()
    var memoriaRam2 = MemoriaRam()
    var procesador = Procesador()
    var almacenamiento1 = Almacenamiento()
    var almacenamiento2 = Almacenamiento()
    var tarjetaGrafica = TarjetaGrafica()
}

class MemoriaRam{
    var capacidad = 0
    var fabricante = ""
    var snRGB = false
}

class Procesador{
    var velocidad = 0.0
    var numCores = 0
    var numHilos = 0
    var fabricante = ""
}

class Almacenamiento{
    var capacidad = 0
    var fabricante = ""
    var tipoUnidad = ""
}

class TarjetaGrafica{
    var ram = MemoriaRam()
    var consumo = 0.0
    var cudaCores = 0
    var velocidad = 0.0
    
}


//2) Instanciar un ordenador con todos sus objetos con información almacenada
var ram1 = MemoriaRam()
ram1.capacidad = 4
ram1.fabricante = "Crucial DDR4 2400"
ram1.snRGB = false

var ram2 = MemoriaRam()
ram2.capacidad = 16
ram2.fabricante = "Trident Z RGB"
ram2.snRGB = true

var proc1 = Procesador()
proc1.velocidad = 3.2
proc1.numCores = 6
proc1.numHilos = 12
proc1.fabricante = "AMD Ryzen 5 1600 Stepping AF"


var almacenamiento1 = Almacenamiento()
almacenamiento1.capacidad = 64
almacenamiento1.fabricante = "Toshiba"
almacenamiento1.tipoUnidad = "SSD"

var almacenamiento2 = Almacenamiento()
almacenamiento2.capacidad = 32
almacenamiento2.fabricante = "Asustor AS1002T v2 NAS"
almacenamiento2.tipoUnidad = "SSD"

var tarjeta1 = TarjetaGrafica()
tarjeta1.ram = ram1
tarjeta1.consumo = 59
tarjeta1.cudaCores = 384
tarjeta1.velocidad = 60


var ordenador1 = Ordenador()
ordenador1.precio = 750
ordenador1.nombreEquipo = "TERRAQUE"
ordenador1.memoriaRam1 = ram1
ordenador1.memoriaRam2 = ram2
ordenador1.procesador = proc1
ordenador1.almacenamiento1 = almacenamiento1
ordenador1.almacenamiento2 = almacenamiento2
ordenador1.tarjetaGrafica = tarjeta1


//imprimir
dump(ordenador1)
