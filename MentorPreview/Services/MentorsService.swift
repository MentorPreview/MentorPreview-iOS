//
//  MentorsService.swift
//  MentorPreview
//
//  Created by ShinokiRyosei on 2017/10/26.
//Copyright © 2017年 ShinokiRyosei. All rights reserved.
//

import UIKit


// MARK: - MentorsService

class MentorsService: NSObject {

    func get() {

        Network.request(target: .mentors, successHandler: { json in

        }, errorHandler: { error in

        })
    }
}
