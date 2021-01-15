//
//  QiitaData.swift
//  qiitaApiApp
//
//  Created by 徳永勇希 on 2021/01/15.
//

import Foundation

class QiitaData:NSObject {
    var userImage:String
    var title:String
    var userName:String
    var likeCount:Int
    var website_url:String
    
    
    init(userImage:String,title:String,userName:String,likeCount:Int,website_url:String) {
        self.userImage = userImage
        self.title = title
        self.userName = userName
        self.likeCount = likeCount
        self.website_url = website_url
    }
    
    
    
    
    
}
