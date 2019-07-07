import UIKit

typealias Text = String

var str1: Text = "12"
var str2: Text = "22"
var str3: Text = "qwerty67"

if(Int(str1) != nil){
    print(str1)
}else{
    print("\(str1) is not a clean number")
}

if(Int(str2) != nil){
    print(str2)
}else{
    print("\(str2) is not a clean number")
}

if(Int(str3) != nil){
    print(str3)
}else{
    print("\(str3) is not a clean number")
}

typealias TupleType = (numberOne: Text?, numberTwo: Text?)?

var t1:TupleType = ("190","67")
var t2:TupleType = ("100", nil)
var t3:TupleType = ("-65","70")

if (t1?.numberOne != nil && t1?.numberTwo != nil){
    print(t1 ?? 1)
}

if (t2?.numberOne != nil && t2?.numberTwo != nil){
    print(t2 ?? 1)
}

if (t3?.numberOne != nil && t3?.numberTwo != nil){
    print(t3 ?? 1)
}

