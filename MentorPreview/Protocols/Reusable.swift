//
//  Reusable.swift
//  MentorPreview
//
//  Created by ShinokiRyosei on 2017/10/27.
//  Copyright © 2017年 ShinokiRyosei. All rights reserved.
//

import UIKit


// MARK: - Reusable

protocol Reusable {

    static var defaultReuseIdentifier: String { get }
}


extension Reusable where Self: UIView {

    static var defaultReuseIdentifier: String {

        return String(describing: self)
    }
}
