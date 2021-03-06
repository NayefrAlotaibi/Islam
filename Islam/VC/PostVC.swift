//
//  PostVC.swift
//  Islam
//
//  Created by Nayef Alotaibi on 9/2/18.
//  Copyright © 2018 Nayef Alotaibi. All rights reserved.
//

import UIKit
import WebKit

class PostVC: UIViewController, WKNavigationDelegate {
    
    
    @IBOutlet weak var WKView: WKWebView!
    @IBOutlet weak var postContent: UITextView!
    
    var html : String = " "
    var containerHeight = CGFloat()
    var contentString = String()
    var index : Int = 0
    var isSaved = Bool ()

    var post: Post? {
        didSet {
            html = (post?.content)!
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        webKitSetUp()
    }

    func webKitSetUp(){
        WKView.navigationDelegate = self
        WKView.isUserInteractionEnabled = true
        WKView.isMultipleTouchEnabled = true;
        WKView.scrollView.showsHorizontalScrollIndicator = false
        WKView.scrollView.showsVerticalScrollIndicator = false
        WKView.backgroundColor = UIColor .clear;
        WKView.clipsToBounds = true
        WKView.loadHTML(html: html)
    }
}
extension WKWebView {
    
    func loadHTML(html: String) {
        let htmlString = """
        <link rel="stylesheet" type="text/css" href="style.css">
        <meta name="viewport" content="initial-scale=1.0" />
        <span>\(html)</span>
        """
        self.loadHTMLString(htmlString, baseURL: Bundle.main.bundleURL)
    }
}
