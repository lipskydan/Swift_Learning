import UIKit

typealias Chessman = [String: (alpha: Character, num:Int)?]
var Chessmans: Chessman = ["Пешка":("A",3), "Конь":("G",5), "Слон": nil]

func chessAnalizer(figure: Chessman){
for (name, coordinates) in Chessmans {
    if coordinates != nil {
        print("Coordinates of \(name) is \(String(describing: coordinates))")
    }else{
        print("\(name) is not found")
    }
}
}

chessAnalizer(figure: Chessmans)

func changeFigure(figureForChange figure: inout Chessman, currentName curNam: String, coordinates coord: (Character,Int)?){
    if figure[curNam] != nil{
        figure.updateValue(coord, forKey: curNam)
    }else{
        figure[curNam] = coord
    }
//    print(figure)
}

changeFigure(figureForChange: &Chessmans, currentName: "Слон", coordinates: ("C",113))

