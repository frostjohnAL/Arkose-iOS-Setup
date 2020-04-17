//
//  ContentView.swift
//  Arkose Labs Fraud Detection
//
//  Created by John Frost on 3/1/20.
//  Copyright © 2020 John Frost. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController {
    
    var webView: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let webViewConfiguration = WKWebViewConfiguration();
        webView = WKWebView(frame:.zero , configuration: webViewConfiguration)
        
        view.addSubview(webView)
        webView.translatesAutoresizingMaskIntoConstraints = false
        let constraints = [
            webView.topAnchor.constraint(equalTo: view.topAnchor),
            webView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            webView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            webView.trailingAnchor.constraint(equalTo: view.trailingAnchor)
        ]
        NSLayoutConstraint.activate(constraints)
        
        let url = Bundle.main.url(forResource: "index", withExtension: "html", subdirectory: "WebAssets")!
        webView.loadFileURL(url, allowingReadAccessTo: url)
        
    }
}
