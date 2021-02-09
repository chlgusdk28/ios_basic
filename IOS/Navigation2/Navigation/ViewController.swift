//
//  ViewController.swift
//  Navigation
//
//  Created by 최지석 on 2021/02/09.
//

import UIKit



class ViewController: UIViewController, EditDelegate {
  
    

    @IBOutlet weak var txtMessage: UITextField!
    @IBOutlet weak var imgView: UIImageView!
    let imgOn = UIImage(named: "lamp_on.png")
    let imgOff = UIImage(named: "lamp_off.png")
    let imgRed = UIImage(named: "lamp_red.png")
    var isOn = true
    var isRed = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imgView.image = imgOn
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let editViewController = segue.destination as! EditViewController
        
        if segue.identifier == "editButton"{
            editViewController.textWayValue = "Segue: Use Button!"
        }else{
            editViewController.textWayValue = "Segue: Use BarButton!"
        }
        editViewController.textMessage = txtMessage.text!
        editViewController.delegate = self
        editViewController.isOn = isOn
        editViewController.isRed = isRed
    }
    
    func didMessageEditDone(_ controller: EditViewController, message: String) {
        txtMessage.text = message
    }
    func didImageOnOffDone(_ controller: EditViewController, isOn: Bool, isRed: Bool){
        if isOn && isRed == false{
            imgView.image = imgOn
            self.isOn = true
        }else if isRed && isOn {
            imgView.image = imgRed
            self.isOn = true
            self.isRed = true
        }
        else {
            imgView.image = imgOff
            self.isOn = false
            self.isRed = false
        }
    }
}

