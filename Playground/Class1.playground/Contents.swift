import UIKit



class Chessman{
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
    
    let type: ChessFigures
    let color: Color
    var coordinates: (String, Int)? = nil
    let figureSymbol: String
    
    init(type: ChessFigures, color: Color, figure: String) {
        self.type = type
        self.color = color
        self.figureSymbol = figure
    }
    
    init(type: ChessFigures, color: Color, figure: String, coordinates: (String, Int)) {
        self.type = type
        self.color = color
        self.figureSymbol = figure
        self.setCoordinates(char: coordinates.0, num: coordinates.1)
    }
    
    func info() -> Void {
        print("Фигура \(self.type) \(self.type.rawValue) цвет \(self.color) \((self.coordinates == nil) ? "не размещена на игровой площадке" : "координаты \(String(describing: self.coordinates?.0)) \(String(describing: self.coordinates?.1))")")
    }
    
    func setCoordinates(char: String, num: Int) {
        self.coordinates = (char, num)
    }
    
    func kill(){
        self.coordinates = nil
    }
}

var a = Chessman(type: .bishop, color: .white, figure: Chessman.ChessFigures.bishop.rawValue)
a.setCoordinates(char: "A", num: 1)
a.info()
a.kill()
a.info()

var QueenBlack = Chessman(type: .queen, color: .black, figure: Chessman.ChessFigures.queen.rawValue, coordinates: ("A",6))
QueenBlack.info()

