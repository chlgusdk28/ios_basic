//
//  ViewController.swift
//  ex12
//
//  Created by nina on 2021/02/03.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var edit: UITextField!
    
    
    @IBOutlet weak var text: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        text.text = ""
    }
    
        
    @IBAction func btn(_ sender: UIButton) {
        var num = edit.text!.trimmingCharacters(in: .whitespacesAndNewlines)
        
        if(num.isEmpty){
            text.text = "값을 입력해주세요."
        }else{
            checked(num: Int(num)!)
        }
        
    }
    
    func checked(num : Int){
        if (num%2 == 0){
            text.text = "짝수입니다."
        }else{
            text.text = "홀수입니다."
        }
    }
    
    

    

}

