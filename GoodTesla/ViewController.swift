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
    private let mainView = MainView()

    override func viewDidLoad() {
        super.viewDidLoad()
        configureBackButton()
        mainView.webView.navigationDelegate = self
    }

    override func loadView() {
        view = mainView
    }

    func configureBackButton() {
        mainView.backButton.backgroundColor = UIColor(white: 1.0, alpha: 0.7)
        mainView.backButton.layer.cornerRadius = 5
        mainView.backButton.layer.borderWidth = 1
        mainView.backButton.setTitle("Exit", for: .normal)
        mainView.backButton.setTitleColor(UIColor.black, for: .normal)
        mainView.backButton.addTarget(self, action: #selector(backButtonPressed(_:)), for: .touchUpInside)
    }

    func configureBackButton(_ canGoBack: Bool) {
        mainView.backButton.setTitle(canGoBack ? "Back" : "Exit", for: .normal)
    }

    @objc func backButtonPressed(_: UIButton) {
        if mainView.webView.canGoBack {
            mainView.webView.goBack()
        } else {
            presentTwoButtonAlertController("앱 종료", "앱을 종료하시겠습니까?")
        }
    }
}

extension ViewController: WKNavigationDelegate {
    func webView(_ webView: WKWebView, didCommit _: WKNavigation!) {
        mainView.backButton.setTitle(webView.canGoBack ? "Back" : "Exit", for: .normal)
    }
}
