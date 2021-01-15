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
    @IBOutlet weak var searchTextField: UITextField!
    
    @IBOutlet weak var searchButtonConfiguration: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(UINib(nibName: "DisplayDataViewCell", bundle: nil), forCellReuseIdentifier: "Cell")
        
        
    }
    @IBAction func searchButton(_ sender: Any) {
        fetchqiitaApi(searchWord: searchTextField.text ?? "")
        
    }
    
    
    func
    fetchqiitaApi(searchWord:String){
        guard let word = searchWord.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed) else {return}
        
        let url = "https://qiita.com/api/v2/items?page=1&per_page=20&query=\(word)"
        
        AF.request(url, method: .get, parameters: nil, encoding: JSONEncoding.default, headers: nil).responseJSON { (response) in
            print(response)
            switch response.result{
            
            
            case .success(let value):
                
                guard let data = value as? [[AnyHashable:Any]] else{return}
                let result = data.compactMap { (qiitaApiResult) -> QiitaData? in
                    
                    return QiitaData(dicData: qiitaApiResult)
                }
                self.qiitaData = result
                self.tableView.reloadData()
                
            case .failure(_):
                print("error")
            }
        }
        
        
    }
    
    
}
extension SearchlistViewController:UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return qiitaData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! DisplayDataViewCell
        
        cell.cellSetUp(qiitaData: qiitaData[indexPath.row])
        
        return cell
    }
    
    
    
    
}

