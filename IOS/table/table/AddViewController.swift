//
//  AddViewController.swift
//  Table
//
//  Created by 정정이 on 2021/02/09.
//

import UIKit

class AddViewController: UIViewController {

    @IBOutlet weak var txtAddItem: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

     
    }
    
    @IBAction func btnAddItem(_ sender: UIButton) {
        // 아이템즈에 텍스트 필드 값을 추가한다.
        items.append(txtAddItem.text!)
        itemsImageFile.append("clock.png")
        txtAddItem.text = ""
        navigationController?.popViewController(animated: true)
    }
}
