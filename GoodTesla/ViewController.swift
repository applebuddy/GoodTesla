//
//  ViewController.swift
//  GoodTesla
//
//  Created by MinKyeongTae on 2020/04/30.
//  Copyright © 2020 MinKyeongTae. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController {

    @IBOutlet weak var webView: WKWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
        guard let url = URL(string: "http://giwan.co.kr/gdmotors") else { return }
        self.webView.load(URLRequest(url: url))
    }
}

