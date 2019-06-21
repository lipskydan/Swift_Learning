import UIKit

var a:Bool = true; var b:Bool = false

var aAndb:Bool = a && b
var aORb:Bool = a || b

print("a && b = \(aAndb)")
print("a || b = \(aORb)")

((true && false) || true)
true && false && true || (true || false)
false || (false || true) && (true && false)
