import Foundation
print("Input ypur decimal no.!", terminator : "")

var inpNum = Int(readLine()!)
print(inpNum)

if let _ : Int = inpNum{
    make()
}else{
    print("숫자 잘 입력해야징~~")
}

func make(){
    var arr1: [Int] = []
    print("숫자를 입력하세요", terminator : "")
    print("")
    for _ in 1...inpNum! {
        var inpNum1 = Int(readLine()!)
        arr1.append(inpNum1!)
    }
    print("최소값  : \(arr1.min()), 최대값 : \(arr1.max())" )
    print("어딧냐 : \((arr1.index(of: arr1.max()!)!) + 1)")
}
