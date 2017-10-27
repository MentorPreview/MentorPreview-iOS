//
//  Network.swift
//  MentorPreview
//
//  Created by ShinokiRyosei on 2017/10/26.
//  Copyright © 2017年 ShinokiRyosei. All rights reserved.
//

import UIKit

import Alamofire
import SwiftyJSON

// MARK: - API

enum API {

    // /course/mentors
    case courseMentors(course: CourseType)

    // /mentors
    case mentors

    var endpoint: String {

        return Config.baseURL + path
    }

    var path: String {

        switch self {

        case .courseMentors:
            return "course/mentors"

        case .mentors:
            return "/mentors"
        }
    }


    var parameters: Parameters? {

        switch self {

        case .courseMentors(let course):
            return ["identifier": course.rawValue]

        case .mentors:
            return nil
        }
    }

    var method: HTTPMethod {

        switch self {

        case .courseMentors, .mentors:
            return .post
        }
    }
}


// MARK: - CourseType

enum CourseType: String {

    case iphone = "iphone"
    case android = "android"
    case unity = "unity"
    case webDesign = "webd"
    case webService = "webs"
    case movie = "movie"
    case anime = "anime"
    case design = "design"
    case mediaArt = "mediaart"
    case game2d = "2d"
    case minecraft = "minecraft"
    case dtm = "dtm"
    case maya = "maya"
    case miku = "miku"
    case line = "line"
    case iot = "iot"
    case camera = "camera"
}


// MARK: - Network

class Network: NSObject {

    static func request(target: API, successHandler: @escaping (JSON) -> Void, errorHandler: @escaping (Error) -> Void) {

        let endpoint: URLConvertible = target.endpoint

        Alamofire.request(endpoint, method: target.method, parameters: target.parameters).responseJSON { response in

            if let error = response.error {

                errorHandler(error)
                return
            }

            guard let data = response.data else {

                return
            }

            successHandler(JSON(data))
        }
    }
}
