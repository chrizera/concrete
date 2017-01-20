//
//  AllComicsTableViewCell.swift
//  CollectionView
//
//  Created by Christian Perrone on 19/01/17.
//
//

import UIKit

class AllComicsTableViewCell: UITableViewCell {

    @IBOutlet weak var collectionView: UICollectionView!
    let connection = MarvelAPIConnection()
    let datasource = AllComicsCollectionViewDataSource()
    
    func configueAllComics() {
        connection.allComicsRequest(datasource: datasource, collectionView: collectionView)
    }
}
