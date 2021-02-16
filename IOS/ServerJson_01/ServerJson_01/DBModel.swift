//
//  DBModel.swift
//  ServerJson_01
//
//  Created by nina on 2021/02/15.
//

import Foundation

class DBModel : NSObject{
    
    // Properties 프로퍼티라고 부름!!
    var scode : String?
    var sname : String?
    var sdept : String?
    var sphone : String?
    
    // Empty constructor
    override init() {
        
        
    }
    
    init(scode : String, sname : String, sdept : String, sphone : String) {
        self.scode = scode
        self.sname = sname
        self.sdept = sdept
        self.sphone = sphone
    }
    

}
