import UIKit

var tump1 = (Film: "Walking Tall", Number: "69", Dish: "Pizza")

let (l1,l2,l3) = tump1

var tump2 = (Film: "Babby", Number: "100", Dish: "Pasta")

var tmp = tump1
tump1 = tump2
tump2 = tmp

var tump3 = (tump1.Number, tump2.Number, Int(tump1.Number)! - Int(tump2.Number)!)
