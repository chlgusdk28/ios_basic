import UIKit

// Tuple 을 사용한 할당 연산자
let (x1, y1) = (1, 2)
print(x1, y1)

let (x2, y2) = (3, "Kim")
print(x2, y2)

// 사칙 연산자
print(1+2)
print(3-2)
print(4*3)
print(10/3)
print(10.0/3.0)
print(9%4)

//단항 음수 연산자

let one = 1
let minusOne = -one
let plusOne = -minusOne
print(one, minusOne, plusOne)

// 비교 연산자

1 == 1
2 != 1
1 > 2
1 >= 2
2 <= 1

let name = "world"
    if name == "world"{
        print("Hello World")
    }else{
        print("I'm Sorry \(name)")
    }

(1,"zebra") < (2,"apple")
(3,"apple") < (3,"bird")
(4,"dog") == (4,"dog")
("blue", -1) < ("purple",1)
//("blue", false) < ("purple", true)

//삼항 조건 연산자
let constenHeight = 40
let hasHeader = true
let rowHeight = constenHeight + (hasHeader ? 50 : 20)
// 무조건 앞에가 True고 뒤가 False
print(rowHeight)


// NIL 병합 연산자
let defaltColorName = "red"
var userDefinedColorName : String? // 이 값의 default값은 nil이다 <- optional변수

var colorNameToUse = userDefinedColorName ?? defaltColorName
// userDefinedColorName 이 비어있으면 나는 defaltColorName 를 쓰겟습니다.
print(colorNameToUse)

userDefinedColorName = "green"
colorNameToUse = userDefinedColorName ?? defaltColorName
print(colorNameToUse)

//범위 연산자

for i in 1...10{
    print(i)
}

// 1에서 10까지의 합 구하기
var sum1 = 0
for i in 1...10{
    sum1 += i
}
print("\(sum1)")

for i in 1..<10{
    print("5 X \(i) = \(i*5)")
}

//for 문을 이용해 인원번호와 이름 출력하기 (인원번호는 1번부터)

let names = ["최지석", "최현아","김태현","박경미"]

    for i in names.indices{
        print("Person \(i+1) is called \(names[i])")
    }



//배열을 다른 배열로 할당 후 출력하기
let a1 = [-1,-2,-3,0,1,2,3]
let b1 = a1[2...]
// 써진 2는 숫자가 아니라 인덱스 번호를 의미 2번째꺼 이후부터 출력
print(b1)
print(b1.count)
print(a1[1])
print(b1[2])
// b1을 출력하려고 해도 a1 의 배열을 그대로 가져가기 때문에 a1의 위치값으로 가져옴

print("----------------")

for i in 2..<a1.count{
    print(b1[i])
}

let b2 = a1[...2]
let b3 = a1[..<2]

print(names)

for name in names[2...]{
    print(name)
}

for name in names[...2]{
    print(name)
}
for name in names[..<2]{
    print(name)
}

let range = ...5
print(range)
range.contains(7)
range.contains(4)
range.contains(-1)

// 해당 숫자가 있는지 참거짓

range.contains(-100)

// 논리 연산자
let allowedEntry = false
if !allowedEntry{
    print("Access denied!")
}

// 논리 곱연산자
let enteredDoorCode = true
let passedRetinaScan = false

if enteredDoorCode && passedRetinaScan {
    print("welcome")
}else{
    print("Access denied")
}


if enteredDoorCode || passedRetinaScan {
    print("welcome")
}else{
    print("Access denied")
}

