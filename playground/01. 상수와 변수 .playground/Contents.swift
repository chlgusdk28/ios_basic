import UIKit

/*
 -----------------
 
 작명규칙 * 꼭 지켜야함!!
 
 - Lower Camel Case : Function / method/ veriable/ constant/
 ex) studentName
 - upper Camel Case : type(class, struct, enum, extension)
 ex) Student, Product
 
 - 대소문자 구분
 - 첫 글자를 숫자로 시작하면 안됨
 
 -----------------
 */

let message = "GOGO"
print(message)

/*
 상수 (int) 와 변수(var)
 
 - 상수 : 한번 선언한 값에 대해 변경이 불가능
 - 변수 : 한번 선언한 값에 대해 변경이 가능
 
 - 상수 선언 방법
     basic Method
     let <variable name> : <type> = <value>
    - 추론방법
    let <variable name> = <value>

- 변수 선언 방법
    -basic Method
     var <variable name> : <type> = <value>
    - 추론방법
    var <variable name> = <value>
 */


var intLetNum1 : Int = 200
let intLetNum2 = 100

var intVarNum1: Int = 200
var intVarNum2 = 100

intLetNum1 = 2000

print(intLetNum1)
print(intLetNum2)

dump(intLetNum1)

//-----------------------------------------
// class 생성
//-----------------------------------------

class Student{
    var name : String = "유비"
    var age : Int = 20
}
//Instance 생성
let student : Student = Student()
print(student)
print(student.name)
print(student.age)
dump(student)

// 😀

var 😀 = 123
print(😀)
print("😀")

/*
 ------------------------------------
 문자열 보간법 -> print
 ------------------------------------
 
 - String Interpolation
 - Program 실행중 문자열, 변수, 상수의 값을 표현하기 위해 사용된다
 
 */
let studentName = "홍길동"
print(studentName)
print("Name :" + studentName)

// String Interpolation //  %d, %f 다 필요없다.
print("Name: \(studentName)")


let age : Int = 10
print("저는 \(age)살 입니다.")
print("저의 형은\(age+4)살 입니다.")

/*
  상수 선언후에 나중에 값 할당하기
  : 나중에 할당하려는 상수나 변수는 타입을 꼭 명시해 주어야 한다.
 */

let sum : Int
let inputA = 100
let inputB = 200

sum = inputA + inputB
print(sum)

// sum 은 let이라 한번 들어가면 바꿀수가 없다
// sum = 0 Error

// 변수 선언만 하고 값을 안넣어서 난 에러

var nickName: String
nickName = "유비"
print(nickName)

nickName = "관우"
print(nickName)

