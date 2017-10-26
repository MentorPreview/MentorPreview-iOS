//
//  UIImageViewExtension.swift
//  MentorPreview
//
//  Created by ShinokiRyosei on 2017/10/27.
//  Copyright © 2017年 ShinokiRyosei. All rights reserved.
//

import UIKit

import Kingfisher


extension UIImageView {

    func setImage(urlString: String) {

        let url = URL(string: urlString)
        self.kf.setImage(with: url)
    }
}
