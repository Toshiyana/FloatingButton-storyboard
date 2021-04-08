//
//  UIButtonExtension.swift
//  FloatingButton-storyboard
//
//  Created by Toshiyana on 2021/04/08.
//

// pattern2
// UIButtonの拡張によるfloatingActionButtonの作成

import UIKit

extension UIButton {

    func createFloatingActionButton() {
        layer.backgroundColor = CGColor(red: 100.0/255.0, green: 130.0/255.0, blue: 230.0/255.0, alpha: 1.0)
        layer.cornerRadius = frame.height / 2
        imageEdgeInsets = UIEdgeInsets(top: 20, left: 20, bottom: 20, right: 20)//buttonと画像の間に上下左右のmerginをとることで画像を縮小
        layer.shadowOpacity = 0.25
        layer.shadowRadius = 5
        layer.shadowOffset = CGSize(width: 0, height: 10)
    }

}
