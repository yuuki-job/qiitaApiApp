//
//  QiitaData.swift
//  qiitaApiApp
//
//  Created by 徳永勇希 on 2021/01/15.
//

import Foundation

class QiitaData:NSObject {
    var userImage:String?
    var title:String?
    var userName:String?
    var likeCount:Int?
    var website_url:String?
    
    
    init(dicData:[AnyHashable:Any]) {
        self.likeCount = dicData["likes_count"] as? Int
        self.title = dicData["title"] as? String
        
        guard let usersData = dicData["user"] as? [AnyHashable: Any] else {return}
        print(usersData)
        
        self.userName = usersData["name"] as? String
        self.userImage = usersData["profile_image_url"] as? String
        
        self.website_url = usersData["website_url"] as? String
    }
    
    
    
    
    
}
