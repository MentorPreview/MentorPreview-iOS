//
//  Camp.swift
//  MentorPreview
//
//  Created by ShinokiRyosei on 2017/10/29.
//  Copyright © 2017年 ShinokiRyosei. All rights reserved.
//

import UIKit

import ObjectMapper


// MARK: - Camp

final class Camp: Mappable {

    var campus: Campus?
    var endDateString: String = ""
    var name: String = ""
    var startDateString: String = ""
    var imageURLString: String = ""

    required init?(map: Map) {

    }

    func mapping(map: Map) {

        self.campus <- map["campus"]
        self.endDateString <- map["end_date"]
        self.name <- map["name"]
        self.startDateString  <- map["start_date"]
        self.imageURLString <- map["img_url"]
    }
}
