//
//  Mentor.swift
//  MentorPreview
//
//  Created by ShinokiRyosei on 2017/10/26.
//Copyright © 2017年 ShinokiRyosei. All rights reserved.
//

import UIKit

import ObjectMapper


// MARK: - Mentor

class Mentor: Mappable {

    var name: String = ""
    var imageURLString: String = ""

    required init?(map: Map) {

    }

    func mapping(map: Map) {

        self.name <- map["name"]
        self.imageURLString <- map["img_url"]
    }
}
