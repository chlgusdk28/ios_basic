import UIKit

let names = ["최현아", "최지석", "김태현", "박경미"]

for name in names{
    print("Hello, \(name)!")
}

for (index, text) in names.enumerated(){
    print("The name at index \(index) is \(index)")
}

let numberOfLegs = ["거미":8, "개미":6, "고양이":4]
for (animalName, legCount) in numberOfLegs{
    print("\(animalName)s have \(legCount) leg")
}

let minustes = 60
let minuteInterval = 5

for tickMark in stride (from : 0, to : minustes, by: minuteInterval){
    print(tickMark)
}

let integerToDescribe = 5
var description = "The number \(integerToDescribe) is"

switch integerToDescribe {
case 2,3,5,7,11,13,17,19:
    description += "a prime number, and also"
    fallthrough
default:
    description += "an integer"
}
print(description)

var startIndex1 = 0
var endIndex1 = 100
var sum1 = 0

gameLoop1:while startIndex1 <= endIndex1 {
    startIndex1 += 1
    sum1 += startIndex1
    if sum1 >= 50{
        break gameLoop1
    }else{
        continue gameLoop1
    }
}

print(sum1)
