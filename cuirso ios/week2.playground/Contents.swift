import UIKit

var str = "Hello, playground"

var meses=1...12

for mes in meses{
    
    //print(mes)
    
    switch mes {
    case 1,2,3:
          
        print("mes templado")
        
    case 4...7:
          print("mes caluroso")
    default:
        print("no conozco el clima")
    }
    
}


for index in 0...100{
    
    
    if(index%5==0 && index != 0){
      print("\(index) Bingo!!!")
    }
    if(index%2==0 && index != 0){
         print("\(index) par")
    }else{
        print("\(index) impar")
    }
    if(index >= 30 && index <= 40 ){
        print("\(index) Viva swift")
    }
    
    
}
