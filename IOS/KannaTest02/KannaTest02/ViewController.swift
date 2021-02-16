//
//  ViewController.swift
//  KannaTest02
//
//  Created by nina on 2021/02/10.
//

import UIKit
import Kanna

class ViewController: UIViewController {
    @IBOutlet weak var KyuungKi: UILabel!
    @IBOutlet weak var KangWon: UILabel!
    @IBOutlet weak var InCheon: UILabel!
    @IBOutlet weak var ChungNam: UILabel!
    @IBOutlet weak var SeJong: UILabel!
    @IBOutlet weak var DeaJeon: UILabel!
    @IBOutlet weak var KyungBok: UILabel!
    @IBOutlet weak var DeaGu: UILabel!
    @IBOutlet weak var WoolSan: UILabel!
    @IBOutlet weak var BuSan: UILabel!
    @IBOutlet weak var KyungNam: UILabel!
    @IBOutlet weak var JeonBook: UILabel!
    @IBOutlet weak var KangJoo: UILabel!
    @IBOutlet weak var JeonNam: UILabel!
    @IBOutlet weak var JeJu: UILabel!
    @IBOutlet weak var ChungBook: UILabel!
    @IBOutlet weak var Seoul: UILabel!
    
            
    let timeSelector: Selector = #selector(ViewController.dataCrawling2)

    var Array : [String] = []
    var Array2 : [String] = []
//    var Array3 : [String] = [ "Seoul", "BuSan", "DeaGu", "InCheon", "KangJoo", "DeaJeon", "WoolSan", "SeJong","KyuungKi","KangWon","ChungBook","ChungNam","JeonBook","JeonNam","KyungBok","KyungNam","JeJu"]
    override func viewDidLoad() {
        super.viewDidLoad()
        dataCrawling()
        Timer.scheduledTimer(timeInterval: 60.0, target: self, selector: timeSelector, userInfo: nil, repeats: true)

//        for i in 0..<18{
//            (UILabel(frame: Array3[i])).text = Array[17] + "\n" + Array2[17]
//        }
        
        Seoul.text = Array[17] + "\n" + Array2[17]
        BuSan.text = Array[18] + "\n" + Array2[18]
        DeaGu.text = Array[19] + "\n" + Array2[19]
        InCheon.text = Array[20] + "\n" + Array2[20]
        KangJoo.text = Array[21] + "\n" + Array2[21]
        DeaJeon.text = Array[22] + "\n" + Array2[22]
        WoolSan.text = Array[23] + "\n" + Array2[23]
        SeJong.text = Array[24] + "\n" + Array2[24]
        KyuungKi.text = Array[25] + "\n" + Array2[25]
        KangWon.text = Array[26] + "\n" + Array2[26]
        ChungBook.text = Array[27] + "\n" + Array2[27]
        ChungNam.text = Array[28] + "\n" + Array2[28]
        JeonBook.text = Array[29] + "\n" + Array2[29]
        JeonNam.text = Array[30] + "\n" + Array2[30]
        KyungBok.text = Array[31] + "\n" + Array2[31]
        KyungNam.text = Array[32] + "\n" + Array2[32]
        JeJu.text = Array[33] + "\n" + Array2[33]
        
    }
    @objc func dataCrawling2(){
        
        let date = NSDate()
        let formatter = DateFormatter()
        formatter.locale = Locale(identifier: "ko")
        formatter.dateFormat = "hh:mm"
        var now = "\(formatter.string(from: date as Date))"
        if now == "09:00" {
            dataCrawling()
        }
        print(now)
    }
        
    func dataCrawling(){
        let mainURL = "http://ncov.mohw.go.kr"
        guard let main = URL(string: mainURL) else{
            print("Error \(mainURL) dosen't seem to")
            return
        }
        
        do{
            let htmlData = try String(contentsOf : main, encoding: .utf8)
            let doc = try HTML(html: htmlData, encoding: .utf8)
            
            for name in doc.xpath("//*[@id='main_maplayout']/button/span[1]"){
                print(name.text!.trimmingCharacters(in: .whitespacesAndNewlines))
                Array.append(name.text!.trimmingCharacters(in: .whitespacesAndNewlines))
            }
            for num in doc.xpath("//*[@id='main_maplayout']/button/span[2]"){
                print(num.text!.trimmingCharacters(in: .whitespacesAndNewlines))
                Array2.append(num.text!.trimmingCharacters(in: .whitespacesAndNewlines))
            }
            
        }catch let error{
            print("Error\(error)")
        }
    }
    
    }
