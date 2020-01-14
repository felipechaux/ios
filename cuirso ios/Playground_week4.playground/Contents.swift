import UIKit

var str = "Hello, playground"


enum CiudadType:Int{
    
    case Cancun=450,
      Guadalajara=10,
      DF=78,
      Monterrey=512 ,
     Merida
    
    func calcularDistancia ()->Int{
        
        return CiudadType.Cancun.rawValue-self.rawValue
        
    }
    
    init (){
        self = .Cancun
    }
    
}


var ciudad=CiudadType()
ciudad.calcularDistancia()


//estructuras

struct Automovil{
    
    let marca:String
    var precio:Double
    
    init(marca:String,precio:Double){
        self.marca=marca
        self.precio=precio
    }
    
    func obtenerDescripcion()->String{
        
        
        return "marca: \(marca) precio: \(precio)"
    }
}

var auto=Automovil(marca: "MarcaAuto", precio: 19000 )

auto.marca
auto.precio=43423
auto.precio

auto.obtenerDescripcion()



//clases

class Producto{
    
    let marca:String
    var precio:Double=0.0
    
    init(marca:String,precio:Double){
        self.marca=marca
        self.precio=precio
    }
    

}










