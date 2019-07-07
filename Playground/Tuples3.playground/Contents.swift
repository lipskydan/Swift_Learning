import UIKit

typealias Operation = (operandOne: Float, operandTwo: Float, operation: Character)

var a1: Operation = (3, 33, "*")

switch a1 {
case _ where a1.operation == "+": print(a1.operandOne + a1.operandTwo)
case _ where a1.operation == "-": print(a1.operandOne - a1.operandTwo)
case _ where a1.operation == "*": print(a1.operandOne * a1.operandTwo)
case _ where a1.operation == "/": print(a1.operandOne / a1.operandTwo)
default: print("ERROR operation")
}
