//
//  EditViewController.swift
//  Navigation
//
//  Created by 최지석 on 2021/02/09.
//

import UIKit


// Java의 interface이다.
protocol EditDelegate {
    func didMessageEditDone(_ controller: EditViewController, message: String)
    func didImageOnOffDone(_ controller : EditViewController, isOn:Bool, isRed:Bool)
 
}
protocol EditDelegate2 {
    func didImageOnOffDone2(_ controller : EditViewController, isOn:Bool)
}


class EditViewController: UIViewController {

    @IBOutlet weak var lblway: UILabel!
    @IBOutlet weak var txtMessage: UITextField!
    @IBOutlet weak var lblOnOff: UILabel!
    @IBOutlet weak var swIsOn: UISwitch!
    @IBOutlet weak var swIsRed: UISwitch!
    
    var delegate: EditDelegate?
    var delegate2: EditDelegate2?
    
    var textWayValue: String = ""
    var textMessage: String = ""
    var isOn : Bool = false
    var isRed : Bool = false
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        lblway.text = textWayValue
        txtMessage.text = textMessage
        swIsOn.isOn = isOn
        if isOn{
            lblOnOff.text = "On"
        }else{
            lblOnOff.text = "Off"
        }
        swIsRed.isOn = isRed
    }
    

    @IBAction func btnDone(_ sender: UIButton) {
        if delegate != nil {
            delegate?.didMessageEditDone(self, message: txtMessage.text!)
            delegate?.didImageOnOffDone(self, isOn: isOn, isRed: isRed)
                }
        navigationController?.popViewController(animated: true)
    }
    
    
    @IBAction func swich(_ sender: UISwitch) {
        if sender.isOn{
            isOn = true
            lblOnOff.text = "On"
        }else{
            isOn = false
            lblOnOff.text = "Off"
        }
    }

    @IBAction func swich2(_ sender: UISwitch) {
        if sender.isOn{
            isRed = true
         
        }else{
            isRed = false
     
        }
        
    }
    
    @IBAction func ImageBtn(_ sender: UIButton) {
        if delegate2 != nil {
            delegate2?.didImageOnOffDone2(self, isOn: isOn)
        }
       
        
    }
}
