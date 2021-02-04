
import Foundation

print("Input ypur decimal no.!", terminator : "")

var inpNum = Int(readLine()!)
print(inpNum)


var asterisks = ""
if inpNum != nil{
    for i in 1...inpNum!{
        asterisks += "*"
        print(asterisks)
        
        if i == inpNum {
            for _ in 1...inpNum!{
                asterisks.removeLast()
                print(asterisks)
            }
        }
    }
}else{
    print("값 입력해라~~~")
}

var repNum = 0
if let _ : Int = inpNum{
    
    repNum = inpNum!
    makeStar()
}else{
    print("숫자 잘 입력해야징~~")
}

func makeStar(){
    for lineNo in 1...repNum{
        for _ in 1...lineNo{
            print("*", terminator: "")
        }
        print("")
    }
    // 별표를 감소하면서 출력하기
        for lineNo in (0..<repNum - 1).reversed(){
            for i in 0...lineNo{
                print("*",terminator:"")
            }
            print("")
        }
    }
