//
//  StoryboardInstantiable.swift
//  MentorPreview
//
//  Created by ShinokiRyosei on 2017/10/10.
//  Copyright © 2017年 ShinokiRyosei. All rights reserved.
//

import UIKit

protocol StoryboardInstantiable {

}

extension StoryboardInstantiable where Self: UIViewController {

    static var storyboardName: String {

        return String(describing: self)
    }

    static func instantiate() -> Self {

        guard let controller = UIStoryboard(name: storyboardName, bundle: nil).instantiateInitialViewController() as? Self else {

            assert(false, "StorybardInstatiable Error")
        }

        return controller
    }

}
