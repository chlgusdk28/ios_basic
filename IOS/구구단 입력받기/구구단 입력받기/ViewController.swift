//
//  ViewController.swift
//  구구단 입력받기
//
//  Created by nina on 2021/02/04.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var tf: UITextView!

    @IBOutlet weak var edit: UITextField!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func btn(_ sender: UIButton) {
        
        var num = Int(edit.text!)
        var n = tf.text
        
        if (n!.isEmpty){
            for i in 1...9 {
                tf.text += "\(num!) * \(i) = \(num!*i)"+"\n"
            }
            
        }else{
            tf.text = ""
        }
        
        
        
        
        
        
        
    }
    

}

