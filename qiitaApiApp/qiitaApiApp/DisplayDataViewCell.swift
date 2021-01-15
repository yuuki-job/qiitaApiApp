//
//  DisplayDataViewCell.swift
//  qiitaApiApp
//
//  Created by 徳永勇希 on 2021/01/15.
//

import UIKit

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
    func cellSetUp(qiitaData:[QiitaData],index:Int){
    
        
        titleLabel.text = qiitaData[index].title
        userNameLabel.text = qiitaData[index].title
        likeCountLabel.text = String(qiitaData[index].likeCount)
        
    }
}
