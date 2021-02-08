//
//  ViewController.swift
//  Hybrid
//
//  Created by nina on 2021/02/05.
//

import UIKit
import WebKit // <-- 웹뷰 임포트 해야함!!

class ViewController: UIViewController, WKNavigationDelegate {
    
    
    @IBOutlet weak var textUrl: UITextField!
    @IBOutlet weak var myWebView: WKWebView!
    @IBOutlet weak var myAvtivityIndicator: UIActivityIndicatorView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        myWebView.navigationDelegate = self
        //초기화면을 네이버로 띄울 예정
        loadWebpage(url : "https://www.naver.com")
        
    }
    
    func loadWebpage(url : String){
        let myUrl = URL (string: url)
        let myRequest = URLRequest(url : myUrl!)
        myWebView.load(myRequest)
    }
    
    func webView(_ webView: WKWebView, didCommit navigation: WKNavigation!) {
        myAvtivityIndicator.startAnimating()
        myAvtivityIndicator.isHidden = false
        //돌고있게 하려면 False줘야함
    }
    // 인디케이터 종료
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        myAvtivityIndicator.stopAnimating()
        myAvtivityIndicator.isHidden = true
    }
    // Error 발생
    func webView(_ webView: WKWebView, didFail navigation: WKNavigation!, withError error: Error) {
        myAvtivityIndicator.stopAnimating()
        myAvtivityIndicator.isHidden = true
    }

    func checkUrl(_ url : String) -> String {
        var strUrl = url
        let flag = strUrl.hasPrefix("http://")
        // "http://가 들어있는지 체크"
        if !flag{
            strUrl = "http://" + strUrl
        }
        return strUrl
    }
    
    @IBAction func btnGo(_ sender: UIButton) {
        let myUrl = checkUrl(textUrl.text!)
        textUrl.text = ""
        loadWebpage(url: myUrl)
    }
    
    
    @IBAction func btnSite01(_ sender: UIButton) {
        loadWebpage(url : "http://54.180.159.210:8080/test/ResponseAge_01.jsp")
        myAvtivityIndicator.isHidden = true
    }
    
    @IBAction func btnSite02(_ sender: UIButton) {
        loadWebpage(url : "http://localhost:8080/ex01/ResponseAge_02.jsp")
        myAvtivityIndicator.isHidden = true
    }
    
    @IBAction func btnSite03(_ sender: UIButton) {
        
        let htmlString = """
        
                    <html>
                    <head>
                       <meta charset="utf-8">
                       <meta name="viewport" content="width=device-width, initial-scale=1.0">
                    </head>
                    <body>
                    <h1> HTML String </h1>
                    <p>String 변수를 이용한 웹페이지</p>
                    <p><a href=\"http://jtbc.joins.com\">JTBC</a>로 이동</p>
                    </body>
                    </html>
        """
        myWebView.loadHTMLString(htmlString, baseURL: nil)
        
    }
    
    @IBAction func btnSite04(_ sender: UIButton) {
        let filePath = Bundle.main.path(forResource: "htmlView", ofType:"html" )
        let myUrl = URL(fileURLWithPath: filePath!)
        let myRequest = URLRequest(url : myUrl)
        myWebView.load(myRequest)
    }
    
    @IBAction func btnstop(_ sender: UIBarButtonItem) {
        
        myWebView.stopLoading()
    }
    
    @IBAction func btnReload(_ sender: UIBarButtonItem) {
        myWebView.reload()
    }
    
    
    @IBAction func btnbefore(_ sender: UIBarButtonItem) {
        myWebView.goBack()
    }
    
    
    @IBAction func btnAfter(_ sender: UIBarButtonItem) {
        myWebView.goForward()
    }
    
}

