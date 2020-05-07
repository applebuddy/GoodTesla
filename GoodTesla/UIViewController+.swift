
//
//  ViewController+.swift
//  GoodTesla
//
//  Created by MinKyeongTae on 2020/05/07.
//  Copyright © 2020 MinKyeongTae. All rights reserved.
//

import UIKit

extension UIViewController {
    func presentTwoButtonAlertController(_ title: String, _ subTitle: String) {
        let alertController = UIAlertController(title: title, message: subTitle, preferredStyle: .alert)
        let exitAlertAction = UIAlertAction(title: "네", style: .default) { _ in
            exit(0)
        }

        let cancelAlertAction = UIAlertAction(title: "아니오", style: .cancel)
        alertController.addAction(exitAlertAction)
        alertController.addAction(cancelAlertAction)
        present(alertController, animated: true)
    }
}
