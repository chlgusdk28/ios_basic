
import Foundation

print("Input ypur decimal no.!", terminator : "")

var inpNum = Int(readLine()!)
print(inpNum)


var repNum = 0
if let _ : Int = inpNum{
    repNum = inpNum!
    makeStar1()
}else{
    print("숫자 잘 입력해야징~~")
}


func makeStar(){
    for i in 1...9{
        for j in inpNum!...inpNum!+3{
            if (((i*j)/10) < 1 ) {
                print("\(j) * \(i) =  \(i*j)", terminator : " ")
            }else{
                print("\(j) * \(i) = \(i*j)", terminator : " ")
            }
            
        }
        print("")
    }
}

func makeStar1(){
    for i in 1...9{
        for j in inpNum!...inpNum!+3{
           
                print("\(String(format: "%d", j)) X \(String(format: "%d", i)) = \(String(format: "%2d", i*j))    ",terminator:"")
            
            
        }
        print("")
    }
}




