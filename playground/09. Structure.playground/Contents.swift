import UIKit

// 구조체 : Structure
// : 구조체는 Swift 에서 Type을 정의한다 .

struct Sample {
    var sampleProperty : Int = 10
    let fixedSampleProperty : Int = 100
    static var typeProperty : Int = 1000
    
    static func instanceMethod(){
       print("type method")
    }
}
// 구조체 사용
var samp: Sample = Sample()
samp.sampleProperty
samp.sampleProperty = 100
samp.sampleProperty
samp.fixedSampleProperty
//samp.fixedSampleProperty=1000
//let으로 만들어놧기 때문에 값을 줄 수 없음

Sample.typeProperty
// static 으로 선언했기 때문에 이렇게 써야댐

// 학생 구조체
struct Student{
    var name: String = "unknown"
    var `class` : String = "Swift"
    
    static func selfIntoduce(){
        print("학생타입 입니다. ")
    }
    func selfIntroduce(){
        print("저는 \(`class`)반 \(name)입니다.")
        print("저는 \(self.class)반 \(name)입니다.")
        // self는 this와 같은의미
    }
}

Student.selfIntoduce()
var student : Student = Student()
student.name = "James"
student.class = "스위프트"
student.selfIntroduce()

let cathy: Student = Student()
cathy.selfIntroduce()


//------------------------------------------------

//Class
// : 구조체는 값 타입인 반면 클래스는 참조타입

class SampleC{
    var sampProperty : Int = 10
    let fixedSampProperty : Int = 100
    static var typeProperty : Int = 100
    
    func instanceMethod(){
        print("인스턴스 메소드")
    }
    static func typeMethod(){
        print("타입메소드 - 스테이틱")
    }
    
    class func classMethod(){
        print("타입메소드 - 클래스")
    }
}

// instance
var sampC: SampleC = SampleC()
sampC.sampProperty = 200
sampC.sampProperty

let sampC2 : SampleC = SampleC()
sampC2.sampProperty = 500
sampC.sampProperty
sampC2.sampProperty

sampC = sampC2
sampC.sampProperty
sampC.sampProperty



// class와 Sturut 의 비교

struct ValueType{
    var property = 1
    
}
class ReferenceType{
    var property = 1
}

let fristStructInstance = ValueType()
var secondStructInstance = fristStructInstance
secondStructInstance.property = 2
fristStructInstance.property
secondStructInstance.property
