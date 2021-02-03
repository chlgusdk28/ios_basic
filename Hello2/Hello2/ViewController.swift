//
//  ViewController.swift
//  Hello2
//
//  Created by nina on 2021/02/03.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var lblWelcome: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    var count:Int = 0
    @IBAction func btnName(_ sender: UIButton) {
        if count == 0{
            lblWelcome.text = "Hello! kenny"
            count = 1
        }else{
            lblWelcome.text = "Hello!"
            count = 0
        }
        
    }

    
}

