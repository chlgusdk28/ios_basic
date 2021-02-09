//
//  ViewController.swift
//  TabBar
//
//  Created by nina on 2021/02/09.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func btnMoveDateView(_ sender: UIButton) {
        tabBarController?.selectedIndex = 2
    }
//데이터피커 
    
    
    
    
    @IBAction func btnMoveImageView(_ sender: UIButton) {
        tabBarController?.selectedIndex = 1
        
    }
}

