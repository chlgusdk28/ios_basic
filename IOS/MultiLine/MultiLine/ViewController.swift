//
//  ViewController.swift
//  MultiLine
//
//  Created by Derrick on 2021/02/04.
//

import UIKit

class ViewController: UIViewController {

    //fields
    
    // textfield
    @IBOutlet weak var txtInput: UITextField!
    
    // ListView
    @IBOutlet weak var tviewResult: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // tviewResult의 속성을 Read Only로 만들어 줘야 한다.
        tviewResult.isEditable = false
    }
    
    // Append
    @IBAction func btnAppend(_ sender: UIButton) {
        let numCheck = checkNil(str: txtInput.text!)
        if numCheck == 0 {
            tviewResult.text += "" + "\n"
        }else{
            tviewResult.text += txtInput.text! + "\n"
        }
        
    }
    
    // nil check function
    func checkNil(str: String!) -> Int {
        let check = str.trimmingCharacters(in: .whitespacesAndNewlines)
        if check.isEmpty {
            return 0
        }else{
            return 1
        }
        
    }
    
    
    // softkeyboard TouchesBegan function
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
            self.view.endEditing(true)
        }
    

}


