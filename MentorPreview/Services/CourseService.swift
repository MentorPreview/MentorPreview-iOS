//
//  CourseServise.swift
//  MentorPreview
//
//  Created by ShinokiRyosei on 2017/10/26.
//  Copyright © 2017年 ShinokiRyosei. All rights reserved.
//

import UIKit

import ObjectMapper


// MARK: - CourseServise

class CourseServise: NSObject {

    func post(course: CourseType) {

        Network.request(target: .courseMentors(course: course), successHandler: { json in

            let mentors: [Mentor] = Mapper<Mentor>().mapArray(JSONArray: json["response"]["mentors"].arrayValue.map({ $0.dictionaryObject! }))
            print(mentors)
        }, errorHandler: { error in

        })
    }
}
