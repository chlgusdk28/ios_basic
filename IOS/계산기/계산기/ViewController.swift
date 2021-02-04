//
//  ViewController.swift
//  계산기
//
//  Created by nina on 2021/02/03.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var num01: UITextField!
    @IBOutlet weak var num02: UITextField!
    @IBOutlet weak var n01: UITextField!
    @IBOutlet weak var n02: UITextField!
    @IBOutlet weak var n03: UITextField!
    @IBOutlet weak var n04: UITextField!
    @IBOutlet weak var n05: UITextField!
    
    override func viewDidLoad(){
        super.viewDidLoad()
    }
    


    @IBAction func btn(_ sender: UIButton) {
        let num1: Int = Int(num01.text!)!
        let num2: Int = Int(num02.text!)!
        

        if(num1 > 0 && num2 > 0){
            n01.text = String((num1 + num2))
            n02.text = String((num1 - num2))
            n03.text = String((num1 * num2))
        }else {
            print("잘못입력함ㅋ")
        }

    }
}

