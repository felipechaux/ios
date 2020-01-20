import UIKit




enum Velocidades:Int{
    //estados
    case Apagado=0,
    VelocidadBaja=20,
    VelocidadMedia=50,
    VelocidadAlta=120
    
    init(velocidadInicial: Velocidades){
        self=velocidadInicial
    }
}



class Auto{
    //variable de incremento
    var estadoNumerico:Int=0
    //instancia de enumeracion
    var velocidad:Velocidades

    
    init(){
        //inicializador
        velocidad = .Apagado
    }
    
    //funcion modificadora de velocidad
    func cambioDeVelocidad( ) -> ( actual : Int, velocidadEnCadena: String){
        
        estadoNumerico+=1
                
        var leyendaVelocidad:String=""
        
        switch estadoNumerico {
        
        case 1:
             leyendaVelocidad="Apagado"
        case 2:
            velocidad = .VelocidadBaja
            leyendaVelocidad="Velocidad baja"
            
        case 3,5,7,9,11,13,15,17,19:
            velocidad = .VelocidadMedia
            leyendaVelocidad="Velocidad media"
            
        case 4,6,8,10,12,14,16,18,20:
            velocidad = .VelocidadAlta
            leyendaVelocidad="Velocidad alta"
            
            default:
            leyendaVelocidad = ""
        }
        
        return (velocidad.rawValue,leyendaVelocidad)
        
    }
    
    
}

var auto = Auto()
for _ in 1...20{
    print(auto.cambioDeVelocidad())
}




