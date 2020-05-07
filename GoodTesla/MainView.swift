//
//  MainView.swift
//  GoodTesla
//
//  Created by MinKyeongTae on 2020/05/05.
//  Copyright © 2020 MinKyeongTae. All rights reserved.
//

import UIKit
import WebKit

class MainView: UIView {
    let webView = WKWebView()
    let backButton = UIButton()

    override init(frame: CGRect) {
        super.init(frame: frame)
        configureView()
    }

    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }

    private func configureView() {
        backgroundColor = UIColor.white
        addSubviews()
        makeConstraint()
        configureWebView()
    }

    private func configureWebView() {
        guard let url = URL(string: URLString.main) else { return }
        webView.load(URLRequest(url: url))
    }

    private func addSubviews() {
        addSubview(webView)
        addSubview(backButton)
    }

    private func makeConstraint() {
        webView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            self.webView.leftAnchor.constraint(equalTo: self.leftAnchor),
            self.webView.rightAnchor.constraint(equalTo: self.rightAnchor),
            self.webView.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor),
            self.webView.bottomAnchor.constraint(equalTo: self.safeAreaLayoutGuide.bottomAnchor),
        ])

        backButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            self.backButton.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 20),
            self.backButton.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -20),
            self.backButton.widthAnchor.constraint(greaterThanOrEqualToConstant: 80),
            self.backButton.heightAnchor.constraint(equalToConstant: 50),
        ])
    }
}
