import UIKit

enum Chessmen{
    case king(rusName: String, color: Color)
    case queen(rusName: String, color: Color)
    case rooks(rusName: String, color: Color)
    case bishops(rusName: String, color: Color)
    case knights(rusName: String, color: Color)
    case pawns(rusName: String, color: Color)
    
    enum Color: String{
        case white = "белый"
        case black = "черный"
    }
}



var tmp1:Chessmen = .king(rusName: "Король", color: .black)
var tmp2:Chessmen = .pawns(rusName: "Пешка", color: .white)

func InfoChessman(figur: Chessmen)->Void{
    switch figur {
    case .pawns(let rusName, let color):
        print("\(rusName), цвет - \(color.rawValue)")
    case .king(let rusName, let color):
        print("\(rusName), цвет - \(color.rawValue)")
    case .queen(let rusName, let color):
        print("\(rusName), цвет - \(color.rawValue)")
    case .rooks(let rusName, let color):
        print("\(rusName), цвет - \(color.rawValue)")
    case .bishops(let rusName, let color):
        print("\(rusName), цвет - \(color.rawValue)")
    case .knights(let rusName, let color):
        print("\(rusName), цвет - \(color.rawValue)")
    }
}

InfoChessman(figur: tmp1)
InfoChessman(figur: tmp2)
