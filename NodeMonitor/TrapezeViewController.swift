//
//  TrapezeViewController.swift
//  NodeMonitor
//
//  Created by Hart, Nicole on 4/5/17.
//  Copyright © 2017 BigNerdRanch. All rights reserved.
//

import UIKit
import WebKit

class TrapezeViewController: UIViewController {
    var webView: WKWebView!
    
    override func loadView() {
        let webConfiguration = WKWebViewConfiguration()
        webView = WKWebView(frame: .zero, configuration: webConfiguration)
        webView.uiDelegate = self as? WKUIDelegate
        view = webView

    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("WebViewController loaded its view.")
        let trapezeURL = URL(string: "https://www.youtube.com/watch?v=sC10_Xl9Yig&list=PLyEazmBGT9RIC5EyKQdvq8W4gvvhS6jPg&index=10")
        let trapezeRequest = URLRequest(url: trapezeURL!)
        
        webView.load(trapezeRequest)
        
    }

   
}
