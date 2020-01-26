//
//  ViewController.swift
//  Hamburguesas
//
//  Created by Asesoftware on 25/01/20.
//  Copyright © 2020 FELIPE. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txtPaises: UILabel!
    @IBOutlet weak var imgHamburguesas: UIImageView!
    @IBOutlet weak var imgPaises: UIImageView!
    @IBOutlet weak var txtHamburguesas: UILabel!
    
    let colores=Colores()
    let paises=ColeccionDePaises()
    let hamburguesas=ColeccionDeHamburguesas()
    var index:Int=1
 
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        //visualizacion de imagenes
        imgHamburguesas.layer.borderWidth=2
        imgHamburguesas.layer.borderColor=UIColor.black.cgColor
        
        imgPaises.layer.borderWidth=2
        imgPaises.layer.borderColor=UIColor.black.cgColor
        
        //cargar imagenes en imageview
        imgHamburguesas.image = UIImage(named: "burger\(index)")
        imgPaises.image = UIImage(named: "country\(index)")

    }
  
    //genera 5 imagenes aleatorias de paises y hamburguezas
    func generarAleatoreoImg(){
        index = Int(arc4random())%5
        
        if (index==0){
            index=1
        }
        imgHamburguesas.image = UIImage(named: "burger\(index)")
        imgPaises.image = UIImage(named: "country\(index)")
    }
    
    
    
    @IBAction func Pedir() {
        
        generarAleatoreoImg()
        view.backgroundColor=colores.regresaColorAleatoreo()
        txtPaises.text=paises.obtenPais()
        txtHamburguesas.text=hamburguesas.obtenHamburguesa()
        
        
        
    }


}

