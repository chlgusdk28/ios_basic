import UIKit

/*
 내 pc의 os 크기 알기
 */

print ("Int : \( String(Int.min)) ~ \( String(Int.max))")
print ("Int8 : \( String(Int8.min)) ~ \( String(Int8.max))")
print ("Int16 : \( String(Int16.min)) ~ \( String(Int16.max))")
print ("Int32 : \( String(Int32.min)) ~ \( String(Int32.max))")
print ("Int64 : \( String(Int64.min)) ~ \( String(Int64.max))")

/*
 기본 데이터 타입
: Bool, Int, UInt
 */


//Bool

var someBool: Bool = true
someBool = false

//Int
var someInt: Int = -100
someInt = Int(100.1)
someInt = 100__00
someInt = 100_00_00

//UInt
var someUInt: UInt = 100

//Float
var someFloat :Float = 3.14
someFloat = 3
someFloat = 10_000.445_56
print(someFloat)

//Double
var someDouble: Double = 3.14
someDouble = 3
someDouble = 10_000.44_556

print("Printing \(type(of: someDouble)):\(type(of: someFloat))")




//숫자  type 변환

let doubleNum = 4.999999
var castToInt = Int(doubleNum)
var roundToInt = Int(doubleNum.rounded())

print("Origin:", doubleNum,"After Cast :", castToInt, "After Round : ", roundToInt)

//character
var someCharacter: Character = "💃🏻"
someCharacter = "가"
someCharacter = "a"
//someCharacter = "abcd"


//String
var someString: String = "하하하 😀"
someString = someString + "웃으면 복이와요"
someString += "나도!"
print(someString)

// someString = someCharacter

someString = """
    여러줄의 문자열을 사용할 수 있음
    첫줄에 겹따옴표 3개
    마지막줄에 동일하게 쓰면 됨


"""

print(someString)

print("aa\tbb\ncc")
let wiseWords = "\" Imagination is more important than knowledge\" - Einstein"
print(wiseWords)


//unicode
let dollaSign = "\n{24}"
let blackHeart = "\n{2665}"
let sparklingHeart = "\n{1F496}"


// 빈문자열 초기화
var emptyString = ""
var anotherEmptyString = String()

// 빈문자열 확인
if emptyString.isEmpty{
    
    print("Nothing to see here!")
    
}

for chr in "Dog!🐶대한민국"{
    print(chr)
}

//문자 상수 선언
let exclamationMark: Character = "!"

// 문자 배열을 이용한 문자열 출력
let catCharacters:[Character] = ["C","a","t","!","🐱" ]
let catString = String(catCharacters)
var catString1 : String = String(catCharacters)

catString1.append(exclamationMark)

let multiplier = 3

// "3 times 2.5 is 7.5"

var Num1 :Double = 3
var Num2 :Double = 2.5

let message = "\(Num1)times\(Num2)is\(Double(Num1*Num2))"
print(message)

//문자길이
let str = "12345,6789"
print("str has\(str.count) characters")

//문자열 인덱스
let greeting = "Guten Tag!"
//print(Int(greeting.startIndex))
greeting[greeting.startIndex]
greeting[greeting.index(before: greeting.endIndex)]
greeting[greeting.index(after: greeting.startIndex)]

let index = greeting.index(greeting.startIndex, offsetBy:7)
greeting[index]


//문자열의 개별문자 접근
print(greeting)
for index in greeting.indices{
    print("\(greeting[index])", terminator:",")
}

//문자열의 삽입과 삭제
print()
var welcome1 = "hello"
welcome1.insert("!", at: welcome1.endIndex)

welcome1.insert(contentsOf: " there", at: welcome1.index(before: welcome1.endIndex))
welcome1.remove(at: welcome1.index(before: welcome1.endIndex))
print(welcome1)

let range = welcome1.index(welcome1.endIndex, offsetBy: -6)..<welcome1.endIndex
welcome1.removeSubrange(range)
print(welcome1)

// 부분 문자열

let greeting1 = "Hello, World!"
let index1 = greeting1.firstIndex(of: ",") ?? greeting1.endIndex
// ?? : nil을 허용하면서 앞의 조건에 해당하는 것이 없으면 endIndex를 수용한다.
let beginnung = greeting1[..<index1]
// 쉼표 앞에 값을 출력
print(beginnung)

//접두사와 접미사 비교
let romeoAndJuliet = [
"Act1 Scene1 : Verona, A public place",
"Act1 Scene2 : Capulet's mansion",
"Act1 Scene3 : A room in Capulet's mansion",
"Act1 Scene4 : A street outside Capulet's mansion",
"Act1 Scene5 : A Great Hall in Capulet's mansion",
    "Act2 Scene1 : Outside Capulet's mansion",
    "Act2 Scene2 : Capulet's orchard",
    "Act2 Scene3 : Outside friar Lawrence's cell",
    "Act2 Scene4 : A street in Verona",
    "Act2 Scene5 : Capulet's mension",
    "Act2 Scene6 : Friar Lawrence's cell",
    
]

var act1SceneCount = 0
for scene in romeoAndJuliet{
    if scene.hasPrefix("Act1"){
        act1SceneCount += 1
    }
}

print("There are \(act1SceneCount) scenes in Act 1")

var mansionCount = 0
var cellConut = 0
for scene in romeoAndJuliet{
    if scene.hasSuffix("Capulet's mansion"){
        mansionCount += 1
        
    }else if scene.hasSuffix("Friar Lawrence's cell"){
        cellConut += 1
    }
    
}

print("\(mansionCount) mansion scence; \(cellConut)" )


// Any, nil
// Any : Swift 의 모든 타입을 지칭하는 키워드
// nil : 없음을 의미하는 키워드

//Any
var someAny: Any = 100
someAny = "어느타입도 수용 가능하다"
someAny = 123.12

let someAny1:Double = someAny as! Double
print(someAny1)
// 강제 형변환이 ! 이다

//someAny = nil

// Tuple
// Tuple 사용전 선언 및 출력방법
var dialCode = 82
var isocode = "KR"
var name = "Korea"

print(dialCode, isocode, name)

//Tuple 사용
var country = (82, "KR", "Korea")
print(country.0, country.1, country.2)

var country1 = (dialCode1 : 82, isocode1 :"KR", name1:"Korea")
print(country1.dialCode1)
print(country1.0)

let person1 = ("John Doe", "201 Main Street", 35)
print("\(person1.0) lives at \(person1.1) and is \(person1.2) years old")

typealias myInt = Int
typealias yourInt = Int
typealias MyDouble = Double

let age:myInt = 20
let year: yourInt = 2020

print(year)
