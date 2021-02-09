//
//  ViewController.swift
//  guguGame
//
//  Created by nina on 2021/02/05.
//

import UIKit

class ViewController: UIViewController {
       
    @IBOutlet weak var num1: UITextField!
    @IBOutlet weak var num2: UITextField!
    @IBOutlet weak var result: UITextField!

    var colorList = ["흰색", "빨강", "주황", "노랑", "초록", "파랑", "남색", "보라", "검정"]
    override func viewDidLoad() {
        super.viewDidLoad()
        random1()
        
    }

    @IBAction func bnt(_ sender: UIButton) {
        var n01 : Int = (colorList.index(of:num1.text!)!)+1
        var n02 : Int = (colorList.index(of:num2.text!)!)+1
        var result1 : Int = Int(result.text!)!
        
        var total :Int = (n01*n02)
        
        if (total == result1) {
            
                let lampOnAlert = UIAlertController(title: "정답", message: "다음문제를 푸시겠습니까?", preferredStyle: UIAlertController.Style.alert)
                let onAction = UIAlertAction(title: "네", style: UIAlertAction.Style.default, handler: {ACTION in
                    self.random1()
                })
                lampOnAlert.addAction(onAction)
                present(lampOnAlert, animated: true, completion: nil)
            
            }
            else {
                let lampOnAlert = UIAlertController(title: "경고", message: "너틀림", preferredStyle: UIAlertController.Style.alert)
                
                let onAction = UIAlertAction(title: "네, 알겠습니다.", style: UIAlertAction.Style.default, handler: nil)
                lampOnAlert.addAction(onAction)
                present(lampOnAlert, animated: true, completion: nil)
        }
        
    }
    
    func random1 (){
        var number1 = Int.random(in: 1...9)
        var number2 = Int.random(in: 1...9)
        num1.text = colorList[number1-1]
        num2.text = colorList[number2-1]
        self.result.text = ""
    }
}


