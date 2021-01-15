//
//  QiitaData.swift
//  qiitaApiApp
//
//  Created by 徳永勇希 on 2021/01/15.
//

import Foundation

class QiitaData {
    var userIMage:String
    var title:String
    var userName:String
    var likeCount:Int
    var website_url:String
    
    
    init(userIMage:String,title:String,userName:String,likeCount:Int,website_url:String) {
        self.userIMage = userIMage
        self.title = title
        self.userName = userName
        self.likeCount = likeCount
        self.website_url = website_url
    }
    
    
    
    
    
}
