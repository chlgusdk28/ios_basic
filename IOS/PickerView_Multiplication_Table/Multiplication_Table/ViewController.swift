//
//  ViewController.swift
//  Multiplication_Table
//
//  Created by Derrick on 2021/02/05.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {

    

    // -------
    // Fields
    // -------
    
    // Table Label
    @IBOutlet weak var lblTable: UILabel!
    // Picker View
    @IBOutlet weak var pickerImage: UIPickerView!
    // TextView
    @IBOutlet weak var txtResultView: UITextView!
    
    // 전체 이미지 개수
    let MAX_ARRAY_NUM = 8
    // PickerView의 컬럼 개수
    let PICKER_VIEW_COLUMN = 1
    
    // Table 2~9
    var table = [Int](2...9)
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        calculation(dan: 2)
        // image 준비 : image를 배열로 생성한다.
  
    }
    
    // ------------------------------------
    // UIPickerView DataSource의 Stubs
    // ------------------------------------
    
    // Data 크기
    // DataSource 쪽이다.
    // PickerView의 컬럼 개수를 줘야함.
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return PICKER_VIEW_COLUMN
    }
    
    // 출력할 개수
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return table.count
    }
    
    // ------------------------------------
    // UIPickerViewDelegate의 Stubs
    // ------------------------------------
    
    // 처음 방법 - 1
    // PickerView에 이름 집어넣기
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        
        return "\(table[row]) 단"
    }
    
    // PickerView 움직이면 이미지 넣어줄곳
    // PickerView로 선택된 파일명을 레이블 및 Image View에 출력
    // 몇번 째를 선택 했구나? -> 그럼 그 배열row에 맞는 이미지 주면 된다.
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        lblTable.text = "\(table[row])단"
        calculation(dan: table[row])
    }
    
    func calculation(dan : Int){
        txtResultView.text = ""
        for i in 1...9 {
            txtResultView.text += "\(dan) X \(i) = \(dan * i)\n"
        }
    }
}

