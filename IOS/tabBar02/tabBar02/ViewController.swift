//
//  ViewController.swift
//  tabBar02
//
//  Created by nina on 2021/02/09.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func btn01(_ sender: UIButton) {
        tabBarController?.selectedIndex = 0
    }
    
    @IBAction func btn02(_ sender: UIButton) {
        tabBarController?.selectedIndex = 1
    }
    
    @IBAction func btn03(_ sender: UIButton) {
        tabBarController?.selectedIndex = 2
    }
    
    
}

