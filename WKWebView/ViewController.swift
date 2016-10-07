//
//  ViewController.swift
//  WKWebView
//
//  Created by LaoTao on 16/5/3.
//  Copyright © 2016年 LaoTao. All rights reserved.
//

import UIKit
import WebKit

//private typealias wkUIDelegate = ViewController
//extension WKUIDelegate {
//    
//    func webView(webView: WKWebView, runJavaScriptAlertPanelWithMessage message: String, initiatedByFrame frame: WKFrameInfo, completionHandler: () -> Void) {
//        let ac = UIAlertController(title: webView.title, message: message, preferredStyle: UIAlertControllerStyle.Alert)
//        ac.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.Cancel, handler: { (aa) -> Void in
//            completionHandler()
//        }))
//        self.presentViewController(ac, animated: true, completion: nil)
//    }
//}


class ViewController: UIViewController, WKNavigationDelegate, WKUIDelegate {
    
    var webView: WKWebView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        webView = WKWebView(frame: self.view.frame)
//        webView.loadRequest(NSURLRequest(URL: NSURL(string: "http://blog.devtao.com")!))
        webView.loadRequest(NSURLRequest(URL: NSURL(string: "https://app.cim120.com/?token=bf4c12f31f924e5cad8c69e387573509")!))
        webView.navigationDelegate = self
        webView.UIDelegate = self
        self.view.addSubview(webView)
        
    }
    
    
    func webView(webView: WKWebView, didFailNavigation navigation: WKNavigation!, withError error: NSError) {
        print("----:" + error.debugDescription)
    }
    
    func webView(webView: WKWebView, didFailProvisionalNavigation navigation: WKNavigation!, withError error: NSError) {
        print("++++:" + error.debugDescription)
    }
    
    func webView(webView: WKWebView, didFinishNavigation navigation: WKNavigation!) {
//        print("-----didFinish:" + webView)
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

































