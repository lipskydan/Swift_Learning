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
    
    func info(){
        print("Фигура \(self.type) \(self.type.rawValue) цвет \(self.color.rawValue) \((self.coordinates == nil) ? "не размещена на игровой площадке" : "координаты \(String(describing: self.coordinates?.0))) \(String(describing: self.coordinates?.1))")")
    }
    
    func setCoordinates(char: String, num: Int) {
        self.coordinates = (char, num)
    }
    
    func kill(){
        self.coordinates = nil
    }
}

class gameDesk{
    var desk: [Int:[String:Chessman]] = [:]
    init() {
        for i in 1...8 {
            desk[i] = [:]
        }
    }
    subscript(alpha: String, number: Int)-> Chessman? {
        get{
            if let chessman = self.desk[number]![alpha]{
                return chessman
            }
            return nil
        }
        set{
            if let _ = newValue {
                 self.setChessman(chess: newValue!, coordinates: (alpha,number))
            }else{
                self.desk[number]![alpha]?.kill()
                self.setChessman(chess: nil, coordinates: (alpha,number))
            }
        }
    }
    
    func setChessman(chess: Chessman?, coordinates: (String,Int)) {
        if chess != nil {
            if let oldCoordinates = chess!.coordinates {
                desk[oldCoordinates.1]![oldCoordinates.0] = nil
            }
            chess!.setCoordinates(char: coordinates.0, num: coordinates.1)
        }
        self.desk[coordinates.1]![coordinates.0] = chess
    }
    
    func printDesk() -> Void {
        let letters:[String] = ["A","B","C","D","E","F","G","H"]
        var tmp: String = ""
        for i in 1...8 {
            tmp += String(i)
            for j in letters{
                if (desk[i]?[j] != nil){
                 tmp += " " + desk[i]![j]!.figureSymbol
                }else{
                    tmp += " _"
                }
                if j == "H" {
                    tmp += "\n"
                }
            }
        }
        
        for i in letters {
            if i == "A"{
              tmp += "  "
            }
            tmp += i + " "
        }
        print(tmp)

    }
}


//var a = Chessman(type: .bishop, color: .white, figure: Chessman.ChessFigures.bishop.rawValue)
//a.setCoordinates(char: "A", num: 1)
//a.info()
//a.kill()
//a.info()
//
//var QueenBlack = Chessman(type: .queen, color: .black, figure: Chessman.ChessFigures.queen.rawValue, coordinates: ("A",6))
//QueenBlack.info()
//QueenBlack.setCoordinates(char: "B", num: 2)
//QueenBlack.info()
//QueenBlack.kill()
//QueenBlack.info()

var game = gameDesk()
var QueenBlack = Chessman(type: .queen, color: .black, figure: Chessman.ChessFigures.queen.rawValue, coordinates: ("A",6))
game.setChessman(chess: QueenBlack, coordinates: ("C",7))
game["C",5] = QueenBlack
//QueenBlack.coordinates
//game["C",5]
//game["C",5] = nil
//game["C",5]

game.printDesk()
QueenBlack.figureSymbol
