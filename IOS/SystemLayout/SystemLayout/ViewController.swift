//
//  ViewController.swift
//  SystemLayout
//
//  Created by nina on 2021/02/16.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txtUserId: UITextField!
    
    @IBOutlet weak var txtUserPw: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func tnOk(_ sender: UIButton) {
        if txtUserId.text == "aaa" && txtUserPw.text == "1111"{
            Share.userID = txtUserId.text!
            self.performSegue(withIdentifier: "afterChecking", sender: self)
        }else{
//            let userAlert = UIAlertController(title: "경고", message: "ID나 암호가 틀렸습니다.", preferredStyle: UIAlertController.Style.actionSheet)
        //ㅠㅠ 타자 못침 ..여기 알람자리 .... 
            print("로그인 실패!!")
         
        }
    }
    
}

