import UIKit

typealias Chessman = [String: (alpha: Character, num:Int)?]

var Chessmans: Chessman = ["Пешка":("A",3), "Конь":("G",5), "Слон": nil]

if let coord = Chessmans["Пешка"]!{
    print("Coordinates of Пешка is \(coord) ")
}else{
    print("Пешка doesn't exist")
}

if let coord = Chessmans["Конь"]!{
    print("Coordinates of Конь is \(coord) ")
}else{
    print("Конь doesn't exist")
}

if let coord = Chessmans["Слон"]!{
    print("Coordinates of Слон is \(coord) ")
}else{
    print("Слон doesn't exist")
}
