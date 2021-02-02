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



