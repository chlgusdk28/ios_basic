//
//  DeleteModel.swift
//  Server Json File
//
//  Created by nina on 2021/02/16.
//

import Foundation

class DeleteModel : NSObject{
    
    var urlPath = "http://127.0.0.1:8080/ios/studentDelete_ios.jsp"
    
    func deleteItems(code : String) -> Bool{
        var result : Bool = true
        let urlAdd = "?code=\(code)"
        urlPath = urlPath+urlAdd
        print(urlAdd)
        
        //한글 url encoding ( 한글 글씨가 퍼센트 글씨로 쏵 바뀜)
        urlPath = urlPath.addingPercentEncoding(withAllowedCharacters: CharacterSet.urlQueryAllowed)!
    
        let url : URL = URL(string : urlPath)!
        let defaultSession = Foundation.URLSession(configuration: URLSessionConfiguration.default)
        
        let task = defaultSession.dataTask(with: url){
            (data, response, error) in
            if error != nil{
                print ("실패했쪄 ㅠ")
            result = false
            }else {
                print("성공했땅!")
                result = true
            }
            
        }
        task.resume()
        return result
    
    
    }
    
    
}
