//
//  ViewController.swift
//  Kanna_01
//
//  Created by nina on 2021/02/10.
//

import UIKit
import Kanna

// 칸나 만들기 순서
// 1) 프로젝트를 만든다
// 2) 만든 프로젝트 경로를 찾아 코코아팟을 깐다
// 3) cd로 들어가서 pod init > pod install 을 한다
// 4) 프로젝트를 들어오면 워크스페이스 아이콘을 클릭해서 실행한다.
// 5) 임포트를 해준다

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        //dataCrawling()
        dataCrawling2()
        
    }
    func dataCrawling(){
        let filePath = Bundle.main.path(forResource: "htmlView", ofType: "html")
        let myUrl = URL (fileURLWithPath: filePath!)
        
        do {
            let htmlData = try String(contentsOf: myUrl, encoding: .utf8)
            let doc = try HTML(html: htmlData, encoding: .utf8)
            
            print(doc.text!)
            print("--------------------")
            
            for h1 in doc.xpath("//h1"){
                print(h1.text!)
            }
            
            print("--------------------")
            
            for p in doc.xpath("//p"){
                print(p.text!)
            }
            
            print("--------------------")
            
            for a in doc.xpath("//a"){
                print(a.text!)
            }
            
            
        } catch let error {
            print("Error\(error)")
        }
    }
    func dataCrawling2(){
        let mainURL = "https://www.rottentomatoes.com/top/bestofrt/?year=2019"
        guard let main = URL(string: mainURL) else{
            print("Error \(mainURL) dosen't seem to")
            return
        }
        
        do{
            let htmlData = try String(contentsOf : main, encoding: .utf8)
            let doc = try HTML(html: htmlData, encoding: .utf8)
            //*[@id="top_movies_main"]/div/table/tbody/tr[1]/td[3]/a
            var count = 1
            for title in doc.xpath("//*[@id='top_movies_main']/div/table/tr/td/a"){
                print(count, ":", title.text!.trimmingCharacters(in: .whitespacesAndNewlines))
                count += 1
            }
            
        }catch let error{
            print("Error\(error)")
        }
    }

}

