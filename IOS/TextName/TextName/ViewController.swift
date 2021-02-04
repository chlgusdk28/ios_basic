//
//  ViewController.swift
//  TextName
//
//  Created by nina on 2021/02/03.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var welcome: UILabel!
    @IBOutlet weak var txtName: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       
    }
    
    //텍스트 필드에서 텍스트를 받아 라벨의 텍스트로 전달
    @IBAction func btnName(_ sender: UIButton) {
        welcome.text = "welcome! \(txtName.text!)"
    }
    //라벨을 초기값으로 변경, 텍스트 필드의 값은 지운다
    @IBAction func btnClear(_ sender: UIButton) {
        welcome.text = "welcome!"
        txtName.text?.removeAll()
    }
    
}

