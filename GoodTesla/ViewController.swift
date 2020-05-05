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
        mainView.configureBackButton(self)
    }

    override func loadView() {
        view = mainView
    }
}
