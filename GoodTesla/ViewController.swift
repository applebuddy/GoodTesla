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
    @IBOutlet var webView: WKWebView!
    @IBOutlet var backButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        configureView()
        configureBackButton()
    }

    private func configureView() {
        guard let url = URL(string: URLString.main) else { return }
        webView.load(URLRequest(url: url))
        backButton.layer.borderWidth = 1
    }

    private func configureBackButton() {
        backButton.backgroundColor = UIColor(white: 1.0, alpha: 0.7)
        backButton.layer.cornerRadius = 5
        backButton.layer.borderWidth = 1
    }

    @IBAction func backButtonPressed(_: UIButton) {
        webView.goBack()
    }
}
