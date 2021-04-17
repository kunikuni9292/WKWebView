//
//  ViewController.swift
//  WebAPP
//
//  Created by 崎原邦達 on 2020/12/05.
//

import UIKit
//WKWebViewを使うにはWKWebViewをインポートする必要がある
import WebKit

class ViewController: UIViewController {

    //テキストフィールド、ウェブブラウザー
    @IBOutlet weak var urlTextField: UITextField!
    //WKWebViewを使うにはWKWebViewをインポートする必要がある
    @IBOutlet weak var browserWebView: WKWebView!
    
    //ボタン
    @IBOutlet weak var backButton: UIBarButtonItem!
    @IBOutlet weak var forwardButton: UIBarButtonItem!
    @IBOutlet weak var reloadButton: UIBarButtonItem!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //urlStringを文字列として"https://dotinstall.com/"で初期化
        let urlString = "https://dotinstall.com/"
//        let urlString = "https://www.google.co.jp/"
        //urlStringをurlRequest型に変換する必要がある。
        let urlRequest = URLRequest(url: URL(string:urlString)!)
        self.browserWebView.load(urlRequest)
        
        
        // Do any additional setup after loading the view.
    }

    //戻るボタンアクションの設定
    @IBAction func goBack(_ sender: Any) {
        self.browserWebView.goBack()
    }
    //進むボタンアクションの設定
    @IBAction func goForward(_ sender: Any) {
        self.browserWebView.goForward()
    }
    //リロードボタンアクションの設定
    @IBAction func reload(_ sender: Any) {
        self.browserWebView.reload()
    }
    
    
    
    
}

