//
//  MentorsService.swift
//  MentorPreview
//
//  Created by ShinokiRyosei on 2017/10/27.
//  Copyright © 2017年 ShinokiRyosei. All rights reserved.
//

import UIKit

import ObjectMapper


// MARK: - MentorsService

final class MentorsService: NSObject {

    func post(completion: @escaping (_ mentors: [Mentor]) -> Void) {
        Network.request(target: .mentors, successHandler: { json in

            let mentors: [Mentor] = Mapper<Mentor>().mapArray(JSONArray: json["response"]["mentors"].arrayValue.map({ $0.dictionaryObject! }))
            completion(mentors)
        }, errorHandler: { error in

        })
    }
}
