//
//  ViewController.swift
//  성적 입력받기
//
//  Created by nina on 2021/02/03.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var text: UILabel!
    
    @IBOutlet weak var edit: UITextField!
    
    @IBOutlet weak var result: UILabel!
    var arr2: [Int] = []
    var count = 0
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
       
    
        
    }
    
    
    @IBAction func btn111(_ sender: UIButton) {
        
        
        if(text.text == "국어"){
            let n01 = Int(edit.text!)
            arr2.append(Int(n01!))
            text.text = "영어"
            edit.text = ""
            
        }
        else if(text.text == "영어"){
            var n02 = Int(edit.text!)
            arr2.append(Int(n02!))
            text.text = "수학"
            edit.text = ""
          
        }
        else if(text.text == "수학"){
            var n03 = Int(edit.text!)
            arr2.append(Int(n03!))
            text.text = "요약"
            edit.text = ""
            var total : Int = arr2.reduce(0, +)
            var avg : Double = Double(total)/Double(arr2.count)

            var nn01 = ""
            if (Double(arr2[0]) < avg){
                nn01 = "낮습니다."
            }else{
                nn01 = "높습니다."
            }
            var nn02 = ""
            if (Double(arr2[1]) < avg){
                nn02 = "낮습니다."
            }else{
                nn02 = "높습니다."
            }
            var nn03 = ""
            if (Double(arr2[2]) < avg){
                nn03 = "낮습니다."
            }else{
                nn03 = "높습니다."
            }
            
            
            result.text = "총합 : \(total) 평균 : \(avg) 국어 : \(Double(arr2[0])) 평균보다 \(nn01) 수학 : \(Double(arr2[1])) 평균보다 \(nn02) 영어 : \(Double(arr2[2])) 평균보다 \(nn03)"
          
        }
        
        
    }
    }
    

