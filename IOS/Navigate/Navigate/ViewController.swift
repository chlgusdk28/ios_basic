//
//  ViewController.swift
//  Navigate
//
//  Created by nina on 2021/02/09.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var textMessage1: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        

    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let editViewController = segue.destination as! EditViewController
        // 세그를 통해서 왓다갔다 할거를 선언해줌!!
        
        if segue.identifier == "editButton"{
            editViewController.textWayVlaue = "Segue : Use Button!"
        }else{
            editViewController.textWayVlaue = "Segue : Use Bar Button!"
        }
        editViewController.textMassage = String(textMessage1.text!)
    }

}

