//
//  TopCharactersTableViewCell.swift
//  CollectionView
//
//  Created by Christian Perrone on 18/01/17.
//
//

import UIKit

class TopCharactersTableViewCell: UITableViewCell {

    @IBOutlet weak var collectionView: UICollectionView!
    let connection = MarvelAPIConnection()
    let datasource = TopCharactersCollectionViewDataSource()
    
    func configureTopCharacters() {
        connection.topCharactersRequest(datasource: datasource, collectionView: collectionView)
    }
}
