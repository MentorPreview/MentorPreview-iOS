//
//  MentorsViewController.swift
//  MentorPreview
//
//  Created by ShinokiRyosei on 2017/10/27.
//  Copyright © 2017年 ShinokiRyosei. All rights reserved.
//

import UIKit


// MARK: - MentorsViewController

class MentorsViewController: UIViewController, StoryboardInstantiable {


    // MARK: Internal


    // MARK: UIViewController

    override func viewDidLoad() {

        super.viewDidLoad()

        Service.mentors.post { [weak self] metors in

            self?.mentors = mentors
            self?.collectionView.reloadData()
        }
    }


    // MARK: Private

    private var mentors: [Mentor] = []

    @IBOutlet private weak var collectionView: UICollectionView! {

        didSet {

            collectionView.dataSource = self
            collectionView.delegate = self
        }
    }
}


// MARK: - UICollectionViewDataSource

extension MentorsViewController: UICollectionViewDataSource {

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {

        return mentors.count
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {

        return UICollectionViewCell()
    }
}


// MARK: - UICollectionViewDelegate

extension MentorsViewController: UICollectionViewDelegate {

}
