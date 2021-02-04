
import Foundation

print("Input ypur decimal no.!", terminator : "")

var inpNum = Int(readLine()!)
print(inpNum)


var repNum = 0
if let _ : Int = inpNum{
    repNum = inpNum!
    makeStar()
}else{
    print("숫자 잘 입력해야징~~")
}


func makeStar(){
    var num = 1
    for i in 1...inpNum!{
      num = num*i
    }
    print("\(num) 이당")
}
