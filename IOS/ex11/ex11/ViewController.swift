//
//  ViewController.swift
//  ex11
//
//  Created by nina on 2021/02/03.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var n1: UITextField!
    @IBOutlet weak var b2: UITextField!
    
    @IBOutlet weak var nn1: UITextField!
    @IBOutlet weak var nn2: UITextField!
    @IBOutlet weak var nn3: UITextField!
    @IBOutlet weak var nn4: UITextField!
    @IBOutlet weak var nn5: UITextField!
    
    @IBOutlet weak var text: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        readOnly()
        text.text = String("")
        // Do any additional setup after loading the view.
    }
    
    
    
    @IBAction func btn(_ sender: UIButton) {
        
        var num1 = n1.text!
        var num2 = b2.text!
 
        num1.trimmingCharacters(in: .whitespacesAndNewlines)
        num2.trimmingCharacters(in: .whitespacesAndNewlines)
       
          
        
        if (num1.isEmpty || num2.isEmpty){
            text.text = String("숫자를 입력해주셔야합니다.")
        }else if(num1 == "0" || num2 == "0"){
            text.text = String("0을 입력하셨습니다.")
        }else{
            var n01 = Int(num1)!
            var n02 = Int(num2)!
            
            nn1.text = "\(n01 + n02)"
            nn2.text = "\(n01 - n02)"
            nn3.text = "\(n01 * n02)"
            nn4.text = String(n01 / n02)
            nn5.text = String(n01 % n02)
            
            text.text = String("계산이 완료되었습니다.")
        }
    }
    
    func readOnly() {
        nn1.isUserInteractionEnabled = false
        nn2.isUserInteractionEnabled = false
        nn3.isUserInteractionEnabled = false
        nn4.isUserInteractionEnabled = false
        nn5.isUserInteractionEnabled = false
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
}

