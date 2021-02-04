import UIKit

/*
 
 Collection : 여러 값들을 묶어서 하나의 변수로 사용
 Array : 순서가 있는 리스트 컬렉션
 
 Dictionary : Key와 Value 의 쌍으로 이루어진 Collection
 Set : 순서가 없고 멤버는 유일한 값으로 구성
 
 
 
 */

// Array
// Empty Int Array 생성

var intVariable : Array<Int> = Array<Int>()

intVariable.append(1)
intVariable.append(10)
intVariable.append(100)
intVariable.append(Int(100.1))
// int 값만 들어가게 되어있음

print(intVariable)
// 순서가 정해져 있음

intVariable.contains(100)
intVariable.contains(99)
//해당 값이 있는지 확인시켜줌
intVariable[0]
intVariable[0...1]
//해당값의 인덱스 확인

intVariable.remove(at: 0)
//0번째의 값을 지운다
intVariable.count

intVariable.removeLast()
// 가장 마지막에 있는 값을 지워라

intVariable.removeAll()
intVariable.count
//intVariable[0]
//값이 없으므로 위에값이 오류

/*
 여러가지 Array 선언
 */

//empty Double Array 생성

//var intVariable : Array<Int> = Array<Int>()
//var doubleVariable : Array<Double> = Array<Double>()
//var doubleVariable : Array<Double> = [Double]()
//var doubleVariable : [Double] = [Double]()
var doubleVariable1 = [Double]()
var doubleVariable : [Double] = []
// 가장많이쓰는방법

//배열에 초기값 넣어 생성하기

let intVariable3 : [Int] = [1,2,3]
let intVariable4 = [1,2,3]
//let intVariable5 = []
// 빈값이면 뭔지몰라서 어레이 선언 불가

//빈 배열을 생성
var someInts:[Int] = []
print("someInts is of type [Int] with \(someInts.count)")
someInts.append(3)
print("someInts is of type [Int] with \(someInts.count)")

//배열을 지우자
someInts = []
print("someInts is of type [Int] with \(someInts.count)")


// 기본값으로 설정된 배열 생성하기
var threeDoubles = Array(repeating: 0.0, count: 3)
print(threeDoubles)

var anotherThreeDoubles = Array(repeating: 2.5, count: 3)

//배열 합치기
var sixDoubles = threeDoubles + anotherThreeDoubles
print(sixDoubles)

// 문자를 이용한 배열의 생성
var shoppingList: [String] = ["Eggs","Milk"]
shoppingList

// 문자열 배열의 출력
for i in 0..<shoppingList.count{
    print(shoppingList[i])
}

if shoppingList.isEmpty{
    print("비어있다")
}else{
    print("안비어있다")
}

//배열에 데이터 추가
shoppingList.append("Four")
print(shoppingList.count, shoppingList)

shoppingList += ["Banking","Powder"]
print(shoppingList.count, shoppingList)

shoppingList += ["초콜렛", "치즈", "버터"]
print(shoppingList.count, shoppingList)

// 배열의 특정 위치 데이터 변경
shoppingList[4...6] = ["Bananas","Apples"]
print(shoppingList.count, shoppingList)


shoppingList.insert("메이플시럽", at : 0)
print(shoppingList.count, shoppingList)

let mapleSyrup = shoppingList.remove(at: 0)
print(mapleSyrup, shoppingList.count, shoppingList)

for(index, value) in shoppingList.enumerated(){
    print("\(index + 1) : \(value)")
}

//Dictionary
//var stringDictionary : Dictionary<String, String> = [String:String]()
var stringDictionary : [String : String] = [:]
 
stringDictionary["name"] = "유비"
stringDictionary["name1"] = "관우"
stringDictionary["name2"] = "장비"
stringDictionary["a"] = "초선"
stringDictionary

var scoreDictionary :  [String : Int] = [:]
scoreDictionary["유비"] = 100
scoreDictionary["관우"] = 90
scoreDictionary["장비"] = 80
var anyDictionary : [String : Any] = [:]
anyDictionary["comeKey"] = "Value"
anyDictionary["anotherKey"] = 100
anyDictionary

//key에 해당하는 값 변경
anyDictionary["someKey"] = "dictionary"
anyDictionary


//key에 해당하는 값 제거
anyDictionary.removeValue(forKey: "anotherKey")
anyDictionary
anyDictionary["someKey"] = nil
anyDictionary

//set

var integerSet : Set<Int> = Set<Int>()
integerSet.insert(1)
integerSet.insert(100)
integerSet.insert(100)
integerSet

integerSet.contains(1)
integerSet.contains(100)

integerSet.remove(100)
integerSet

// 배열문자를 이용한 Set 생성

var favoriteGenres : Set<String> = ["Rock","Classical", "Hip hop"]
print(favoriteGenres.count, favoriteGenres)

var favoriteGenres1 : Set = ["Rock","Classical", "Hip hop"]
print(favoriteGenres.count, favoriteGenres)
// 위 아래 같음

favoriteGenres.isEmpty

//추가
favoriteGenres.insert("Jazz")
favoriteGenres

//삭제
if let removeGenre = favoriteGenres.remove("Rock"){
    print("\(removeGenre)")
}else{
    print("NONO")
}
// 락 지워짐~~

favoriteGenres

// 숫자와 집합 계산할 때 유용하게 사용하는 Set

let oddDigits : Set = [1,3,5,7,9]
let evenDigits : Set = [0,2,4,6,8]
let singleDigits : Set = [2,3,5,7]

// 합집합
oddDigits.union(evenDigits)
oddDigits.union(evenDigits).sorted()

//교집합
oddDigits.intersection(evenDigits)
oddDigits.intersection(singleDigits).sorted()

//차집합
oddDigits.subtracting(singleDigits)


//여집합
oddDigits.symmetricDifference(singleDigits).sorted()

// Set의 멤버쉽과 동등 비교

let houseAnimal : Set = ["개","고양이"]
let farmAnimal : Set = ["소", "닭","양","개","고양이"]
let cityAnimal : Set = ["오리", "토끼"]

houseAnimal.isSubset(of: farmAnimal)
farmAnimal.isSuperset(of: houseAnimal)
// 팜 애니멀이 하우스 애니멀의 모집단인가? ( 하우스애니멀을 소속하고있는가)
farmAnimal.isDisjoint(with: cityAnimal)
// 완전 틀린 집단인가?
