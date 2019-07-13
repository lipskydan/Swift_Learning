import UIKit

enum ArithmeticExpression{
    case number(Int)
    
    indirect case addition(ArithmeticExpression, ArithmeticExpression)
    indirect case subtraction(ArithmeticExpression, ArithmeticExpression)
    indirect case division(ArithmeticExpression, ArithmeticExpression)
    indirect case multiplication(ArithmeticExpression, ArithmeticExpression)
    indirect case exponentiation(ArithmeticExpression, ArithmeticExpression)
    
    func evaluate(expression: ArithmeticExpression? = nil)->Int{
        let expression = (expression == nil ? self : expression)
        switch expression! {
        case .number(let value):
            return value
        case .addition(let first, let second):
            return self.evaluate(expression: first) + self.evaluate(expression: second)
        case .subtraction(let first, let second):
            return self.evaluate(expression: first) - self.evaluate(expression: second)
        case .multiplication(let first, let second):
            return self.evaluate(expression: first) * self.evaluate(expression: second)
        case .division(let first, let second):
            return self.evaluate(expression: first) / self.evaluate(expression: second)
        case .exponentiation(let first, let second):
            return Int(pow(Double(self.evaluate(expression: first)), Double(self.evaluate(expression: second))))
        }
    }
}

var a = ArithmeticExpression.addition(.number(20), .subtraction(.number(10), .number(34)))
a.evaluate()

var b = ArithmeticExpression.exponentiation(.number(2), .exponentiation(.number(3), .number(2)))
b.evaluate()

var c = ArithmeticExpression.exponentiation(.addition(.number(5), .division(.subtraction(.number(1), .number(10)), .number(3))),.number(4))
c.evaluate()


