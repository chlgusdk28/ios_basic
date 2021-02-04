import UIKit

var isCar = true
var isNew = true

if isCar, isNew {
    print ("New Car~ ")
}

isNew = false
if isCar, isNew{
    print("New Car")
}else{
    print ("Old Car")
}

//Unwrapping if 문
let price : Double? = 5.99

if price! > 5.0{
    print (price!)
}

// 강제적으로 언래핑

if let p = price, p>5.0{
    print(p)
}

// switch 조건문

let personAge = 14

if personAge < 1{
    print("baby")
}else if personAge < 3{
    print("toddler")
}else{
    print("ADULT")
}


switch personAge {
case 0..<1:
    print("baby")
case 1..<3:
    print("toddler")
default:
    print("adult")
}

let someInteger = 34
switch someInteger {
case 0:
    print("ZERO")
case 1..<100:
    print("1~99")
case 100...Int.max:
    print("over100")
    
default:
    print("UNKNOW")
}

let character : Character = "a"
switch character {
case "a","A":
    print("the latter A")
default:
    print("Not the latter A")
}

//Tuple 사용하기
let somePoint = (1,1)
switch somePoint {
case (0,0):
    print("\(somePoint) is at the origin.")
case (_,0):
    print("\(somePoint) is at the x-axis.")
case (0,_):
    print("\(somePoint) os on the y-axis.")
case (-2...2, -2...2):
    print("\(somePoint) 거기서부터 거기까지?")
default:
    print("\(somePoint) is outside if the box")
}


//case에 where조건 사용하기
let anotherPoint = (1, -1)
switch anotherPoint {
case let(x,y) where x == y:
    print("\(x), \(y) is on the line x == y")
case let(x,y) where x == -y:
    print("\(x), \(y) is on the line x == -y")
default:
    <#code#>
}

let countryName = "United State"
var countryCode = ""

if countryName == "United State"{
    countryCode = "US"
}else {
    countryCode = "KR"
}

//위 소스를 enum과 switch로 사용

enum Countries : String{
    case us = "United State"
    case unknown = ""
}

switch Countries(rawValue: countryName) ?? .unknown {
case .us: countryCode = "US"
case .unknown: countryCode = "??"
}


