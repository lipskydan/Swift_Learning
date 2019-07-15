import UIKit

enum Color: String{
    case white = "белый"
    case black = "черный"
}

enum ChessFigures: String{
    case king = "♔" // Король
    case queen = "♕" // Королева
    case castle = "♖" // Ладья
    case bishop = "♗" // Слон
    case knight = "♘" // Конь
    case pawn = "♙" // Пешка
}

struct Chessmen{
    var type: ChessFigures
    var color: Color
    var coordinates: (String, Int)? = nil
    
    init(type: ChessFigures, color: Color) {
        self.type = type
        self.color = color
    }
    
    func info() -> Void {
        print("Фигура \(self.type) \(self.type.rawValue) цвет \(self.color) \((self.coordinates == nil) ? "не размещена на игровой площадке" : "координаты \(String(describing: self.coordinates?.0)) \(String(describing: self.coordinates?.1))")")
    }
    
    mutating func setCoordinates(char: String, num: Int) {
        self.coordinates = (char, num)
    }
    
    mutating func kill(){
        self.coordinates = nil
    }
}

var a = Chessmen(type: .bishop, color: .white)
a.setCoordinates(char: "A", num: 1)
a.info()
a.kill()
a.info()
