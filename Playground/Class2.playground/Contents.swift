import UIKit



class Chessman{
    enum Color: String{
        case white = "белый"
        case black = "черный"
    }
    enum ChessFigures: String{
        case king = "♔" // Король ♚
        case queen = "♕" // Королева ♛
        case castle = "♖" // Ладья ♜
        case bishop = "♗" // Слон ♝
        case knight = "♘" // Конь ♞
        case pawn = "♙" // Пешка ♟
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
        var finalDesk = String()
        for i in 1...8 {
            finalDesk += String(i)
            for j in letters{
                if (desk[i]?[j] != nil){
                    if (j != "A" ){
                       finalDesk += " "
                    }
                    if ( j == "C" || j == "F")
                    {
                       finalDesk += " "
                    }
                    finalDesk += "  " + desk[i]![j]!.figureSymbol
                }else{
                    finalDesk += "  _  "
                }
                if j == "H" {
                    finalDesk += "\n\n"
                }
            }
        }
        
        for i in letters {
            if i == "A"{
              finalDesk += "   "
            }
            finalDesk += i + "    "
        }
        print(finalDesk)
    }
}




var game = gameDesk()

var Pawn1White = Chessman(type: .pawn, color: .white, figure: Chessman.ChessFigures.pawn.rawValue)
var Pawn2White = Chessman(type: .pawn, color: .white, figure: Chessman.ChessFigures.pawn.rawValue)
var Pawn3White = Chessman(type: .pawn, color: .white, figure: Chessman.ChessFigures.pawn.rawValue)
var Pawn4White = Chessman(type: .pawn, color: .white, figure: Chessman.ChessFigures.pawn.rawValue)
var Pawn5White = Chessman(type: .pawn, color: .white, figure: Chessman.ChessFigures.pawn.rawValue)
var Pawn6White = Chessman(type: .pawn, color: .white, figure: Chessman.ChessFigures.pawn.rawValue)
var Pawn7White = Chessman(type: .pawn, color: .white, figure: Chessman.ChessFigures.pawn.rawValue)
var Pawn8White = Chessman(type: .pawn, color: .white, figure: Chessman.ChessFigures.pawn.rawValue)

var KingWhite = Chessman(type: .king, color: .white, figure: Chessman.ChessFigures.king.rawValue)
var QueenWhite = Chessman(type: .queen, color: .white, figure: Chessman.ChessFigures.queen.rawValue)
var Castle1White = Chessman(type: .castle, color: .white, figure: Chessman.ChessFigures.castle.rawValue)
var Castle2White = Chessman(type: .castle, color: .white, figure: Chessman.ChessFigures.castle.rawValue)
var Bishop1White = Chessman(type: .bishop, color: .white, figure: Chessman.ChessFigures.bishop.rawValue)
var Bishop2White = Chessman(type: .bishop, color: .white, figure: Chessman.ChessFigures.bishop.rawValue)
var Knight1White = Chessman(type: .knight, color: .white, figure: Chessman.ChessFigures.knight.rawValue)
var Knight2White = Chessman(type: .knight, color: .white, figure: Chessman.ChessFigures.knight.rawValue)

game["A",7] = Pawn1White
game["B",7] = Pawn2White
game["C",7] = Pawn3White
game["D",7] = Pawn4White
game["E",7] = Pawn5White
game["F",7] = Pawn6White
game["G",7] = Pawn7White
game["H",7] = Pawn8White
game["A",8] = Castle1White
game["H",8] = Castle2White
game["C",8] = Bishop1White
game["F",8] = Bishop2White
game["B",8] = Knight1White
game["G",8] = Knight2White
game["D",8] = QueenWhite
game["E",8] = KingWhite

var Pawn1Black = Chessman(type: .pawn, color: .black, figure: "♟" )
var Pawn2Black = Chessman(type: .pawn, color: .black, figure: "♟" )
var Pawn3Black = Chessman(type: .pawn, color: .black, figure: "♟" )
var Pawn4Black = Chessman(type: .pawn, color: .black, figure: "♟" )
var Pawn5Black = Chessman(type: .pawn, color: .black, figure: "♟" )
var Pawn6Black = Chessman(type: .pawn, color: .black, figure: "♟" )
var Pawn7Black = Chessman(type: .pawn, color: .black, figure: "♟" )
var Pawn8Black = Chessman(type: .pawn, color: .black, figure: "♟" )

var KingBlack = Chessman(type: .king, color: .black, figure: "♚")
var QueenBlack = Chessman(type: .queen, color: .black, figure: "♛")
var Castle1Black = Chessman(type: .castle, color: .black, figure: "♜")
var Castle2Black = Chessman(type: .castle, color: .black, figure: "♜")
var Bishop1Black = Chessman(type: .bishop, color: .black, figure: "♝")
var Bishop2Black = Chessman(type: .bishop, color: .black, figure: "♝")
var Knight1Black = Chessman(type: .knight, color: .black, figure: "♞")
var Knight2Black = Chessman(type: .knight, color: .black, figure: "♞")

game["A",2] = Pawn1Black
game["B",2] = Pawn2Black
game["C",2] = Pawn3Black
game["D",2] = Pawn4Black
game["E",2] = Pawn5Black
game["F",2] = Pawn6Black
game["G",2] = Pawn7Black
game["H",2] = Pawn8Black
game["A",1] = Castle1Black
game["H",1] = Castle2Black
game["C",1] = Bishop1Black
game["F",1] = Bishop2Black
game["B",1] = Knight1Black
game["G",1] = Knight2Black
game["D",1] = QueenBlack
game["E",1] = KingBlack

game.printDesk()

