//
//  ViewController.swift
//  Delegate
//
//  Created by nina on 2021/02/05.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate{
    @IBOutlet weak var tf: UITextField!
    
    @IBOutlet weak var text: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tf.delegate = self // 텍스트를 넣는 이벤트가 발생하면 view Controller에 넘겨준다
        
        // Do any additional setup after loading the view.
    }

    @IBAction func btn(_ sender: UIButton) {
      _ = textFieldShouldReturn(tf)
        
    }
    
    // 결국에는 엔터를 쳐도, 버튼을 눌러도 된다는 것!!
    // 매번 이렇게 해야함 !!
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        text.text = tf.text
        return true
    }
    
}

