//
//  Datos.swift
//  Hamburguesas
//
//  Created by Asesoftware on 25/01/20.
//  Copyright © 2020 FELIPE. All rights reserved.
//

import UIKit
import Foundation


class ColeccionDePaises{
    
    var paises=["Afghanistan",
            "Albania",
            "Algeria",
            "Andorra",
            "Angola",
            "Antigua and Barbuda",
            "Argentina",
            "Armenia",
            "Australia",
            "Austria",
            "Azerbaijan",
            "Bahamas",
            "Bahrain",
            "Bangladesh",
            "Barbados",
            "Belarus",
            "Belgium",
            "Belize",
            "Benin",
            "Bhutan"]
    
    func obtenPais( )->String{
        
        let posicion = Int(arc4random())%paises.count
        
        return paises[posicion]
        
    }
    
    
    
    
}

class ColeccionDeHamburguesas{
    
    var hamburguesas=["Krusty", "Fantasma", "Varsity", "Umami","Ray’s Hell","Jucy Lucy", "Las Grown", "Quadruple Bypass", "ShackBurger", "Whopper", "The21Burger","In-N-Out Burger" ,"The White Castle Slider" ,"The Grill Statiion","Classic Diner" ,"Jack & Roll" ,"Office Burger"  ,"Five Star,La Baguette" ,"Frod’s" ,"Brit’s Burger"]
    
    func obtenHamburguesa( )->String{
        
        let posicion = Int(arc4random())%hamburguesas.count
        
        return hamburguesas[posicion]
    }
    
    
    
}

struct Colores {
    let colores = [ UIColor(red:210/255.0, green: 90/255.0, blue: 45/255.0, alpha: 1),
    UIColor(red:40/255.0, green: 170/255.0, blue: 45/255.0, alpha: 1),
    UIColor(red:3/255.0, green: 180/255.0, blue: 90/255.0, alpha: 1),
    UIColor(red:210/255.0, green: 190/255.0, blue: 5/255.0, alpha: 1),
    UIColor(red:120/255.0, green: 120/255.0, blue: 50/255.0, alpha: 1),
    UIColor(red:130/255.0, green: 80/255.0, blue: 90/255.0, alpha: 1),
    UIColor(red:130/255.0, green: 130/255.0, blue: 130/255.0, alpha: 1),
    UIColor(red:3/255.0, green: 50/255.0, blue: 90/255.0, alpha: 1)]
    
    func regresaColorAleatoreo()->UIColor{
        let posicion = Int(arc4random())%colores.count
        
        return colores[posicion]
    }
}


