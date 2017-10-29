//
//  CampsService.swift
//  MentorPreview
//
//  Created by ShinokiRyosei on 2017/10/29.
//  Copyright © 2017年 ShinokiRyosei. All rights reserved.
//

import UIKit

import ObjectMapper


// MARK: - CampsService

final class CampsService: NSObject {

    func post(completion: @escaping (_ camps: [Camp]) -> Void) {

        Network.request(target: .camps,
                        successHandler: { json in

                            print(json)
                            let camps: [Camp] = Mapper<Camp>().mapArray(JSONArray: json["response"]["camps"].arrayValue.map({ $0.dictionaryObject! }))
                            completion(camps)


        },
                        errorHandler: { error in
                            
        })
    }
}
