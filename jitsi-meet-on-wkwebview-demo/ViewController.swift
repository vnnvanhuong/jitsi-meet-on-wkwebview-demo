//
//  ViewController.swift
//  jitsi-meet-on-wkwebview-demo
//
//  Created by Van Huong on 12/14/20.
//

import UIKit
import WebKit
import WKWebViewRTC

class ViewController: UIViewController, WKUIDelegate {
    
    var webView: WKWebView!
    
    override func loadView() {
        let webConfiguration = WKWebViewConfiguration()
        webView = WKWebView(frame: .zero, configuration: webConfiguration)
        webView.uiDelegate = self
        view = webView
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        WKWebViewRTC(wkwebview: webView, contentController: webView.configuration.userContentController)
        webView.load(URLRequest(url: URL(string: "https://meet.jit.si/vnnvanhuong")!))
    }


}

