import UIKit

// 함수 : function
func integerSum(a : Int, b : Int) -> Int{
    return a + b
}

print(integerSum(a: 5, b: 5))


func greet(person : String) -> String{
    return "Hello \(person)!"
}

print(greet(person : "Anna"))

//파라미터가 없는 함수
func sayHelloWorld() -> String{
    return "Hello World"
}


sayHelloWorld()
//복수의 파라미터를 사용하는 함수

func greet1(person : String, alreadyGreeted:Bool) -> String{
    if alreadyGreeted{
        return("Hello \(person), too")
    }else{
        return("Hello \(person)")
    }
}


greet1(person : "Tim", alreadyGreeted : true)
greet1(person : "Tim", alreadyGreeted : false)


//초기값과 변수명을 없애는 함수
// 컨츄리는 밑에 변수에 입력되지 않아 USA출력
// 널값에 대한 대체 (널값이면 해당 값 넣어라)
func buildAddress(_ name : String, address : String, city : String, zipcode postalCode: String, contry : String? = "USA") -> String{
    
    return """
        \(name)
        \(address)
        \(city)
        \(postalCode)
        \(contry ?? "")
        """
}

buildAddress("John Doe", address : "5", city :"상도", zipcode : "111-222")

// 변환값이 없는 함수

func printHello(name : String){
    print("\(name)님! 안녕허세요!")
}

print(printHello(name: "유비"))

func printAndCount(string : String) -> Int{
    print(string)
    return string.count
}

print(printAndCount(string: "Hello"))

func printWithoutCounting(string : String){
    let _ = printAndCount(string: string)
}

printWithoutCounting(string: "Hellolll")

//가변 매개변수
func sayHelloToFriends(me: String, friends : String...) -> String{
    return "Hello \(friends)! I'm\(me)"
}
print(sayHelloToFriends(me: "초선", friends:"손견","손책","장양"))
print(sayHelloToFriends(me: "조조"))

// 복수의 값을 return 하는 함수

func getCountry() -> (dialcode : Int, isoCode : String, name: String){
    let country = (dialcode : 82, isoCode:"KR", name:"Korea")
    return country
}

print(getCountry())

// 배열 중 최대값과 최소값을 리턴


func minMax(array : [Int]) -> (min : Int, max : Int){
    var currentMin = array[0]
    var currentMax = array[0]
    
    for value in array [1..<array.count]{
        if value < currentMin{
            currentMin = value
        }else if value > currentMax{
            currentMax = value
        }
    }
    return(currentMin, currentMax)
    
}

let bounds = minMax(array : [8,-6,2,109,3,71])
print("min is \(bounds.min) and max is \(bounds.max)")
