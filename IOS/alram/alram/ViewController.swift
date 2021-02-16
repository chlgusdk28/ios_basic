//
//  ViewController.swift
//  alram
//
//  Created by nina on 2021/02/04.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var now: UILabel!
    @IBOutlet weak var choice: UILabel!
    @IBOutlet var mainView: UIView!
    
    let timeSelector: Selector = #selector(ViewController.updateTime)
 
    let interval = 1.0
    let interval2 = 86400.0
    
    var isClickConfirm = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
 
        Timer.scheduledTimer(timeInterval: 86400.0, target: self, selector: timeSelector, userInfo: nil, repeats: true)
        
        
        

        
    }

    @IBAction func datePicker(_ sender: UIDatePicker) {
        
        let datePickerView = sender
        let formatter = DateFormatter()
        
        formatter.locale = Locale(identifier : "ko")
        formatter.dateFormat = "yyyy-MM-dd EEE a hh:mm"
        choice.text = "\(formatter.string(from: datePickerView.date))"
    
        
        
    }
    
    @objc func updateTime(){
        let date = NSDate()
        let formatter = DateFormatter()
        
        formatter.locale = Locale(identifier: "ko")
        
        formatter.dateFormat = "yyyy-MM-dd EEE a hh:mm"
        now.text = "\(formatter.string(from: date as Date))"
        
        var nowTime = now.text
        var choiceTime = choice.text
        
            if isClickConfirm { // 얼럿 확인 버튼이 눌렸으면(true), 종료
               
                return
            }
        
            if nowTime == choiceTime && isClickConfirm == false{
                self.isClickConfirm = true // 얼럿 확인 버튼을 누르면, true 로 변경
               
                         // 60초 후에 timerOn 함수를 실행시키는 타이머
                         Timer.scheduledTimer(timeInterval: 60.0, target: self, selector: #selector(self.timerOn), userInfo: nil, repeats: false)
                          // 얼럿창 설정
                          let alert = UIAlertController(title: "알림", message: "설정된 시간입니다 !!!", preferredStyle: .alert)
                          alert.addAction(UIAlertAction(title: "확인", style: UIAlertAction.Style.default) { UIAlertAction in
                            self.mainView.backgroundColor = UIColor.white
                            
                          })
                          self.present(alert, animated: true, completion: nil) // 얼럿 실행
                
                          mainView.backgroundColor = UIColor(displayP3Red: 0.2, green: 0.3, blue: 0, alpha: 0.5)
                
            }else {
                
            }
  
    }


    @objc func timerOn() {
        isClickConfirm = false // 초기화
    }
}




