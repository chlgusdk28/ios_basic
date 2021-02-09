//
//  EditViewController.swift
//  Navigate
//
//  Created by nina on 2021/02/09.
//

import UIKit

class EditViewController: UIViewController {


    @IBOutlet weak var lblWay: UILabel!
    
    @IBOutlet weak var textMassage: UITextField!
    

    @IBOutlet weak var lblOnOff: UILabel!
    
    @IBOutlet weak var swIsOn: UISwitch!
    
    var textWayVlaue : String = ""
    var textMessage1 : String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        lblWay.text = textWayVlaue
        textMassage.text = textMessage1
   
    }



}
