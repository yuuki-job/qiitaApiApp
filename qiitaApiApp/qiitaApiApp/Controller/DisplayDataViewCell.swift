//
//  DisplayDataViewCell.swift
//  qiitaApiApp
//
//  Created by 徳永勇希 on 2021/01/15.
//

import UIKit
import Alamofire
import AlamofireImage
class DisplayDataViewCell: UITableViewCell {
    
    @IBOutlet weak var userImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var userNameLabel: UILabel!
    @IBOutlet weak var likeCountLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    func cellSetUp(qiitaData:QiitaData){
        
        titleLabel.text = qiitaData.title
        userNameLabel.text = qiitaData.userName
        likeCountLabel.text = String(qiitaData.likeCount ?? 0)
        //if let 追加しないと上手くいかなかった。オプショナルバイディングしてのエラーじゃなかった。なぜかわからん
        if let userImage = qiitaData.userImage{
            AF.request(userImage).responseImage { response in
                
                
                if case .success(let image) = response.result {
                    self.userImageView.image = image
                }
            }
        }
    }
}
