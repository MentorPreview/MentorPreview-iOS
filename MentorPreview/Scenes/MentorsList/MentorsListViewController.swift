//
//  MentorsListViewController.swift
//  MentorPreview
//
//  Created by ShinokiRyosei on 2017/10/27.
//  Copyright © 2017年 ShinokiRyosei. All rights reserved.
//

import UIKit


// MARK: - MentorsListViewController

final class MentorsListViewController: UIViewController, StoryboardInstantiable {


    // MARK: Internal


    // MARK: UIViewController

    override func viewDidLoad() {

        super.viewDidLoad()

        Service.mentors.post { [weak self] mentors in

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

extension MentorsListViewController: UICollectionViewDataSource {

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {

        return mentors.count
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {

        let cell: MentorsListCollectionViewCell = collectionView.dequeueReusableCell(forIndexPath: indexPath)
        cell.mentor = mentors[indexPath.item]
        return cell
    }
}


// MARK: - UICollectionViewDelegate

extension MentorsListViewController: UICollectionViewDelegate {

}


// MARK: - UICollectionViewDelegateFlowLayout

extension MentorsListViewController: UICollectionViewDelegateFlowLayout {

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {

        let width: CGFloat = (collectionView.bounds.width - 10) / 2
        let labelHeight: CGFloat = 26
        let height: CGFloat = width + labelHeight
        return CGSize(width: width, height: height)
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {

        let margin: CGFloat = 0
        return UIEdgeInsetsMake(margin, margin, margin, margin)
    }
}
