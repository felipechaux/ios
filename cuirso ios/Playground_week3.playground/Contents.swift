import UIKit

//funciones


//func calculaIMC(PesoIntegral peso: Double, altura:Double) ->(imcCalculado :Double,mensaje:String){
//
//
//    let imc=peso / (altura*altura)
//
//
//    var mensaje = ""
//    if(imc > 18.50 && imc < 25.00){
//        mensaje="Peso normal"
//    }else{
//        mensaje="Debes de acudir con tu medico"
//    }
//
//    //tupla para regresar mas de un tipo de dato
//    let resultado=(imc,mensaje)
//    return resultado
//}
//
//let (imc,mensaje)=calculaIMC(PesoIntegral:66.0, altura:1.6)
//
//mensaje
//imc
////print("hello \(imc)")
//
////imc.0
////imc.1
//
////tupla por fuera
//let imcTupla=calculaIMC(PesoIntegral:66.0, altura:1.6)
//
//imcTupla.imcCalculado
//imcTupla.mensaje
//
//var pelicula : (nombre:String,añoSalida:Int,calificacion:Double)=("El tigre",1990,100.6)
//
//pelicula.añoSalida
//
//// opcionales
//
var numero:Bool? = nil
//

//
//numero=6
//
//if numero != nil {
//    let numeroString: String = String(numero!)
//
//    print(numeroString)
//}

func profesores(  id: String )->String?{
    
    let diccionarioDeProfesores=["007":"David","008":"Martin","009":"Rafa","0010":"Victor"]
    
    let nombre : String? = diccionarioDeProfesores[id]
    
    return nombre
    
}

if let nombre=profesores(id: "0078"){
    nombre
}else{
  //  print("No existe el profesor")
}

let nombreDos=profesores(id: "0089")

if nombreDos != nil{
    nombreDos
}else{
//    print("No existe el profesor")

}

//enumeracion

let ciudades=["Cancun","Guadalajara","DF","Monterrey"]

enum Ciudad{
    case Cancun,
    Guadalajara,
    DF,
    Monterrey
}

func obtenerCiudades(ciudad:Ciudad)->String{
    
    switch ciudad {
    case .Cancun:
         return "Ciudad de playa"
    case .Guadalajara,.DF,.Monterrey:
        return "Ciudad sin playa"
    default:
         return "Opcion invalida"
    }
    
}

obtenerCiudades(ciudad: Ciudad.Cancun)


enum CiudadType:Int{
    
    case Cancun=450,
      Guadalajara=10,
      DF=78,
      Monterrey=512 ,
     Merida
    
}

func calcularDistancia (ciudad:CiudadType)->Int{
    
    return CiudadType.Cancun.rawValue-ciudad.rawValue
    
}

calcularDistancia(ciudad: CiudadType.Monterrey)


//valores dentro de una enumeracion


enum lecturaDeDatos{
    
    case Digitos(Int,Int,Int)
    
    case QrCodigo(String)
    
}

var entradaDatos = lecturaDeDatos.Digitos(3, 4, 5)

entradaDatos = .QrCodigo("AABBCC")

switch entradaDatos {
case .Digitos(let uno, let dos, let tres):
     print("\(uno) \(dos) \(tres) ")
    
case .QrCodigo(let qr):
    print("\(qr) ")
    
}
