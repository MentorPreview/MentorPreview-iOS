//
//  Network.swift
//  MentorPreview
//
//  Created by ShinokiRyosei on 2017/10/26.
//Copyright © 2017年 ShinokiRyosei. All rights reserved.
//

import UIKit

import Alamofire

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
            return "couese/mentors"
        }
    }


    var parameters: Parameters? {

        switch self {

        case .mentors:
            return ["identifier": ""]
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

    static func request(target: API, completion: @escaping (DataResponse<Any>) -> Void) {

        let endpoint: URLConvertible = target.endpoint

        Alamofire.request(endpoint, method: target.method, parameters: target.parameters).responseJSON { response in

            completion(response)
        }
    }
}
