//
//  JsonModel.swift
//  ServerJson_01
//
//  Created by nina on 2021/02/15.
//

import Foundation

protocol JsonModelProtocol: class{
    func itemDownloaded(item : NSArray)
}

class JsonModel : NSObject{
    var delegate: JsonModelProtocol!
    let urlPath = "http://127.0.0.1:8080/ios/student.json"
    
    func downloadItems(){
        let url = URL(string : urlPath)!
        let defualtSession = Foundation.URLSession(configuration: URLSessionConfiguration.default)
        let task = defualtSession.dataTask(with: url){
            (data, response, error) in
            if error != nil{
            }else{
                self.parseJSON(data!)
            }
    }
        task.resume()
}
    
    func parseJSON(_ data : Data){
        var jsonResult = NSArray()
        
        do {
            jsonResult = try JSONSerialization.jsonObject(with: data, options: JSONSerialization.ReadingOptions.allowFragments) as! NSArray
            
        }catch let error as NSError{
            print(error)
        }
        
        var jsonElement = NSDictionary()
        let location = NSMutableArray()
        
        for i in 0..<jsonResult.count{
            jsonElement = jsonResult[i] as! NSDictionary
            let query = DBModel()
            
            if let scode = jsonElement["code"] as? String,
               let sname = jsonElement["name"] as? String,
               let sdept = jsonElement["dept"] as? String,
               let sphone = jsonElement["sphone"] as? String{
                query.scode = scode
                query.sname = sname
                query.sdept = sdept
                query.sphone = sphone
                
            }
            location.add(query)
        }
        DispatchQueue.main.async(execute: {() -> Void in
            self.delegate.itemDownloaded(item: location)
        })
        
    
    }
    
    
    
}
