//
//  CrawlModel.swift
//  Kanna_04
//
//  Created by 고종찬 on 2021/02/10.
//

import Foundation
import Kanna

protocol CrawlModelProtocol: class {
    func itemDownloaded(items: NSArray, itemsAddress: NSArray)//한번 정하면 못바꿈 (재사용 불가)
}

class CrawlModel: NSObject{
   
    var delegate: CrawlModelProtocol!
    
    func dataCrawling(year: String){
        let mainURL = "https://www.rottentomatoes.com/top/bestofrt/?year=\(year)"
        let locations = NSMutableArray()//재사용 가능
        let locationsAddress = NSMutableArray()
        
        guard let main = URL(string: mainURL) else{//사이트 구동되는지 아닌지 파악
            print("Error \(mainURL) doesn't seem to be a valid URL")
            return
        }
        
        do{
            let htmlData = try String(contentsOf: main)
            let doc = try HTML(html: htmlData, encoding: .utf8)
            var count = 0
            for title in doc.xpath("//*[@id='top_movies_main']/div/table/tr/td/a"){
                count += 1
                let tempAddress = "https://www.rottentomatoes.com\(String(describing: title["href"]!))"//자체 href를 가지고 주소를 가져옴
                //working
                let countStr = String(format: "%3d", count)
                let tempStr = "\(countStr) : \(String(title.text!.trimmingCharacters(in: .whitespacesAndNewlines)))" // 번호와 : 타이틀 이름 띄우기
                locations.add(tempStr)// NSMutableArray()에 집어 넣기
                locationsAddress.add(tempAddress) //주소 NSMutableArray()에 집어 넣기
            }
            
        }catch let error{
            print("error : \(error)")
        }
        
        DispatchQueue.main.async(execute: {() -> Void in
            self.delegate.itemDownloaded(items: locations, itemsAddress: locationsAddress)
        })//동시에 실행시키면서 delegate 시키기
        
    }
}
