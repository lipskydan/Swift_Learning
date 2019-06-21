import UIKit

//: Ex 1

let letInt : Int; let letFloat : Float; let letDouble : Double

letInt = 18; letFloat = 16.4; letDouble = 5.7

var SumOfThree: Float = Float(letInt) + Float(letDouble) + letFloat

var MultiDouble = Double(letInt) * Double(letFloat) * letDouble

var MultiInt = Int(MultiDouble)

var Div: Double = Double(letFloat).truncatingRemainder(dividingBy: letDouble)

print("Sum = " + String(SumOfThree))
print("Multi = " + String(MultiInt))
print("Div = " + String(Div) + "\n\n")

//: Ex 2

var a: Int = 2; var b: Int = 3
var ab = (a+4*b)*(a-3*b) + a*a
print("ab = " + String(ab))

//: Ex 3

var c = 1.75; var d = 3.25
var cd = 2*(c+1)*(c+1)+3*(d+1)
print("cd = " + String(cd))

//: Ex 4

var lenght = 4;

var P = pow(Double(lenght), 2)
print("P = " + String(Int(P)))

var L = 2 * 3.14 * Double(lenght)
print("L = " + String(L))


