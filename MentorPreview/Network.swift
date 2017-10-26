//
//  Network.swift
//  MentorPreview
//
//  Created by ShinokiRyosei on 2017/10/26.
//Copyright © 2017年 ShinokiRyosei. All rights reserved.
//

import UIKit

import Alamofire
import SwiftyJSON

// MARK: - API

enum API {

    // /course/mentors
    case mentors

    var endpoint: String {

        return Config.baseURL + path
    }

    var path: String {

        switch self {

        case .mentors:
            return "course/mentors"
        }
    }


    var parameters: Parameters? {

        switch self {

        case .mentors:
            return ["identifier": "iphone"]
        }
    }

    var method: HTTPMethod {

        switch self {

        case .mentors:
            return .post
        }
    }
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
