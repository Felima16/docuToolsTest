//
//  WebviewViewController.swift
//  DocuToolsTest
//
//  Created by Fernanda de Lima on 15/08/2018.
//  Copyright © 2018 FeLima. All rights reserved.
//

import UIKit

class WebviewViewController: UIViewController {

    @IBOutlet weak var homeWebView: UIWebView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.initWebView()
        // Do any additional setup after loading the view.
    }
    
    func initWebView(){
        homeWebView.loadRequest(URLRequest(url: URL(string: "http://google.com")!))
    }
    
    @IBAction func stopButton(_ sender: Any) {
        homeWebView.stopLoading()
    }
    
    @IBAction func updateButton(_ sender: Any) {
        homeWebView.reload()
    }
    
    @IBAction func forwardButton(_ sender: Any) {
        homeWebView.goForward()
    }
    
    @IBAction func backButton(_ sender: Any) {
        homeWebView.goBack()
    }
    
    @IBAction func homeButton(_ sender: Any) {
        homeWebView.loadRequest(URLRequest(url: URL(string: "http://google.com")!))
    }

}
