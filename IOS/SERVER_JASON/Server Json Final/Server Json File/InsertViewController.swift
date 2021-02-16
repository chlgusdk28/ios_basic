//
//  InsertViewController.swift
//  Server Json File
//
//  Created by nina on 2021/02/16.
//

import UIKit

class InsertViewController: UIViewController {

    @IBOutlet weak var scode: UITextField!
    
    @IBOutlet weak var sname: UITextField!
    
    @IBOutlet weak var sdept: UITextField!
    
    @IBOutlet weak var sphone: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let code = scode.text
        let name = sname.text
        let dept = sdept.text
        let phone = sphone.text
        
        let insertModel = InsertModel()
        let result = insertModel.insertItems(code: code!, name: name!, dept: dept!, phone: phone!)
        if result == true{
          //잘된거
            let resultAlert = UIAlertController(title: "완료", message: "입력되었습니다.", preferredStyle: UIAlertController.Style.alert)
            let onAction = UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: {ACTION in
                self.navigationController?.popViewController(animated: true)
            })
            resultAlert.addAction(onAction)
            present(resultAlert, animated: true, completion: nil)
        }else {
            
            let resultAlert = UIAlertController(title: "실패", message: "에러가 발생했습니다.", preferredStyle: UIAlertController.Style.alert)
            let onAction = UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil)
            resultAlert.addAction(onAction)
            present(resultAlert, animated: true, completion: nil)
            
            
            //안된거 ㅠ
        }
       
    }
    
    @IBAction func InsertBtn(_ sender: UIButton) {
        
        
        
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
