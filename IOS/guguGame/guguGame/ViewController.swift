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
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        random1()
    }
    
    


    @IBAction func bnt(_ sender: UIButton) {
        var n01 : Int = Int(num1.text!)!
        var n02 : Int = Int(num2.text!)!
        var result1 : Int = Int(result.text!)!
        
        var total :Int = (n01*n02)
        
        if (total == result1) {
            
            let lampOnAlert = UIAlertController(title: "정답", message: "다음문제를 푸시겠습니까?", preferredStyle: UIAlertController.Style.alert)

            let onAction = UIAlertAction(title: "네", style: UIAlertAction.Style.default, handler: {ACTION in
                
                var number1 = Int.random(in: 1...9)
                var number2 = Int.random(in: 1...9)
                
                self.num1.text = String(number1)
                self.num2.text = String(number2)
                self.result.text = ""

            
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
        
        num1.text = String(number1)
        num2.text = String(number2)
    }
}


