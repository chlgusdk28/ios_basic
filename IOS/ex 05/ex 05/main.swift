import Foundation
print("Input ypur decimal no.!", terminator : "")

var inpNum = Int(readLine()!)
print(inpNum)

if let _ : Int = inpNum{
    //make()
    // 똑같은거 
    sum()
}else{
    print("숫자 잘 입력해야징~~")
}

func make(){
    var num = 0
    if inpNum! > 10{
        while inpNum! > 10 && inpNum != 0 {
            num += (inpNum!%10)
            inpNum! = inpNum!/10
        }
        print("\(num) 이 총합 ")
    }else{
        print("\(inpNum!) 이 총합 ")}
}

func sum(){
    var result:Int = 0
    while(inpNum! != 0){
        result += inpNum!%10
        inpNum! = inpNum!/10
    }
    print("\(result)")
    
}
