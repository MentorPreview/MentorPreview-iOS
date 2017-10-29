//
//  Service.swift
//  MentorPreview
//
//  Created by ShinokiRyosei on 2017/10/26.
//  Copyright © 2017年 ShinokiRyosei. All rights reserved.
//

import UIKit


// MARK: - Service

class Service: NSObject {

    static let course = CourseServise()
    static let mentors = MentorsService()
    static let camps = CampsService()
}
