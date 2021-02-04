import UIKit

// optional
// 값이 있을수도 있고 없을 수도 있다.
// nil값을 포함할 수 도 있고 안할 수도 있다.

var constantNum  = 100

//let optionalConstant = nil
let optionalConstant : Int! = nil
// 인트인데 닐을 포함할 수 있다.
let optionalConstant1 : Int? = nil
// 초기값으로 닐값을 준 상태임 찍으면 nil이 출력

var constantNum1 : Int! = 100
print(constantNum1 + 10)

constantNum1 = nil
// constantNum1 + 1
// 닐값에다가 +1 못함
//print(constantNum1!)

switch constantNum1 {
// none 은 널값을 의미
case .none:
      print("값이 NIL임")
case .some(let value):
      print("값이 \(value)이당")
}
// --------
var constantNum2 : Int? = 100
print (constantNum2! + 10)

switch constantNum2 {
// none 은 널값을 의미
case .none:
      print("값이 NIL임")
case .some(let value):
      print("값이 \(value)이당")
}

//-------
var myName2: String? = "James"
var yourName2: String? = nil


if let name = myName2, let friend = yourName2{
    print("\(name) and \(friend)")
}
// 현재 유어네임2가 값이 없으므로 만족되지 않아 출력되지않음


yourName2 = "Cathy"
if let name = myName2, let friend = yourName2{
    print("\(name) and \(friend)")
}
