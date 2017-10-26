//
//  NibLoadable.swift
//  MentorPreview
//
//  Created by ShinokiRyosei on 2017/10/27.
//  Copyright © 2017年 ShinokiRyosei. All rights reserved.
//

import UIKit


// MARK: - NibLoadable

protocol NibLoadable: class {

    static var nibName: String { get }
}

extension NibLoadable where Self: UIView {

    static var nibName: String {

        return String(describing: self)
    }

    static func instantiateFromNib() -> Self {

        let nib = UINib(nibName: nibName, bundle: nil)
        return nib.instantiate(withOwner: self, options: nil).first as! Self
    }
}
