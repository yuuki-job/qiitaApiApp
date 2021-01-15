//
//  DisplayWebViewController.swift
//  qiitaApiApp
//
//  Created by 徳永勇希 on 2021/01/15.
//

import UIKit
import WebKit

class DisplayWebViewController: UIViewController,WKUIDelegate {
    
    var webView = WKWebView()
    var receiveData = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print(receiveData)
        // WKWebViewを生成
        webView = WKWebView(frame: view.frame)
        // WKWebViewをViewControllerのviewに追加する
        view.addSubview(webView)
        // リクエストを生成
        if receiveData != ""{
            let request = URLRequest(url: URL(string: receiveData)!)
            // リクエストをロードする
            webView.load(request)
            
        }
    }
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
}
