//
//  Campus.swift
//  MentorPreview
//
//  Created by ShinokiRyosei on 2017/10/29.
//  Copyright © 2017年 ShinokiRyosei. All rights reserved.
//

import UIKit

import ObjectMapper


// MARK: - Campus

final class Campus: Mappable {

    var id: Int = 0
    var officialName: String = ""
    var createdAtString: String = ""
    var imageURLString: String = ""
    var latitude: Float = 0
    var longtitude: Float = 0
    var address: String = ""
    var universityName: String = ""
    var campusName: String = ""
    var commonName: String = ""
    var updatedAtString: String = ""
    var postalCode: String = ""

    init?(map: Map) {

    }

    func mapping(map: Map) {

        self.id <- map["id"]
        self.officialName <- map["official_name"]
        self.createdAtString <- map["created_at"]
        self.imageURLString <- map["img_url"]
        self.latitude <- map["lat"]
        self.longtitude <- map["lng"]
        self.address <- map["address"]
        self.universityName <- map["university_name"]
        self.campusName <- map["campus_name"]
        self.commonName <- map["common_name"]
        self.updatedAtString <- map["updated_at"]
        self.postalCode <- map["postal_code"]
    }
}
