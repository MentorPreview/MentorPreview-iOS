//
//  MentorsListCollectionViewCell.swift
//  MentorPreview
//
//  Created by ShinokiRyosei on 2017/10/27.
//  Copyright © 2017年 ShinokiRyosei. All rights reserved.
//

import UIKit

import Kingfisher


// MARK: - MentorsListCollectionViewCell

class MentorsListCollectionViewCell: UICollectionViewCell {


    // MARK: Internal

    var mentor: Mentor! {

        didSet {

            profileImageView.setImage(urlString: mentor.imageURLString)
            nameLabel.text = mentor.name
        }
    }
    

    // MARK: Private

    @IBOutlet private weak var profileImageView: UIImageView!
    @IBOutlet private weak var nameLabel: UILabel!
    
}
