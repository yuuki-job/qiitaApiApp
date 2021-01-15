//
//  ViewController.swift
//  qiitaApiApp
//
//  Created by 徳永勇希 on 2021/01/15.
//

import UIKit
import Alamofire

class SearchlistViewController: UIViewController {
    
    var qiitaData:[QiitaData] = []
    
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(UINib(nibName: "DisplayDataViewCell", bundle: nil), forCellReuseIdentifier: "Cell")
        let data = QiitaData(userImage: "", title: "アイウエオ", userName: "ゆゆゆ", likeCount: 100, website_url: "")
        qiitaData.append(data)
    }


}
extension SearchlistViewController:UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return qiitaData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
    let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! DisplayDataViewCell
        
        cell.cellSetUp(qiitaData: qiitaData, index: indexPath.row)
        
    return cell
    }
    
    
    
    
}

