//
//  ViewController.swift
//  DatePicker
//
//  Created by Derrick on 2021/02/04.
//

import UIKit

class DateViewController: UIViewController {

    // 현재시간
    @IBOutlet weak var lblCurrentTime: UILabel!
    
    // Result
    @IBOutlet weak var lblPickerTime: UILabel!
    
    // AsyncTask 쓸 때 많이 쓰는 변수.
    // Object C 와 연결 시켜주는 것이다.
    let timeSelctor: Selector = #selector(DateViewController.updateTime)
    // updateTime 은 object C Type으로 만들어야 한다.
    
    // 시간 interval을 1초로 주겠다.
    // 초 바뀔 때마다 자동으로 메소드를 수행하기 위해.
    let interval = 1.0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // updateTime 실행 시키기
        Timer.scheduledTimer(timeInterval: interval, target: self, selector: timeSelctor, userInfo: nil, repeats: true)
        
    }
    //------
    //Action
    //------
    
    // DatePicker
    @IBAction func changeDatePicker(_ sender: UIDatePicker) {
        
        let datePickerView = sender
        let formatter = DateFormatter()
        
        // Korea
        formatter.locale = Locale(identifier: "ko")
        formatter.dateFormat = "yyyy-MM-dd EEE a hh:mm:ss"
        lblPickerTime.text = "선택시간 : \(formatter.string(from: datePickerView.date))"
    }
    
    // AsyncTask로 1초당 1번씩 구동
    // @objc 는 swift로 소스를 쓴것을 object C로 변환해주는 것이다.
    @objc func updateTime(){
        // NS : Next Step
        let date = NSDate()
        let formatter = DateFormatter()
        
        // .년 .일 .월 순서 맞추기 위해
        formatter.locale = Locale(identifier: "ko") // Korea
        // 년도-월-일 요일 (오전/오후) 시간:분:초
        // 12시간씩이 아니라 24시간으로 하고싶으면
        // hh -> HH Capital로 바꿔 주면 된다.
        formatter.dateFormat = "yyyy-MM-dd EEE a hh:mm:ss"
        lblCurrentTime.text = "현재시간 : \(formatter.string(from: date as Date))"
        
    }
    
    
}

