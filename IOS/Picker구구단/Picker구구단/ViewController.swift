//
//  ViewController.swift
//  Picker구구단
//
//  Created by nina on 2021/02/05.
//

import UIKit

class ViewController: UIViewController,UIPickerViewDelegate, UIPickerViewDataSource{
    
    @IBOutlet weak var dan: UILabel!
    @IBOutlet weak var gugulist: UITextView!
    @IBOutlet weak var picker: UIPickerView!
    
    let NUM = 8
    let PICKER = 1
    
    var guList = [Int](2...9)
    var list = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
        //dan.text = String(guList[0])
       //gugulist.text = String(list[0])
   
    }
    
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return PICKER
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return NUM
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return String(guList[row])
        // 로우 값으로 리턴해서 해당 이미지가 띄워지도록
    }

    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        gugulist.text = ""
        dan.text = ""
        for i in 0 ..< NUM{
            gugulist.text += "\(row) * \(i) = \(row*i)"
        }
        dan.text = "\(guList[row])"
    

    }

}

