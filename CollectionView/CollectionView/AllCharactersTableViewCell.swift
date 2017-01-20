//
//  AllCharactersTableViewCell.swift
//  CollectionView
//
//  Created by Christian Perrone on 16/01/17.
//
//

import UIKit

class AllCharactersTableViewCell: UITableViewCell {
    
    @IBOutlet weak var collectionView: UICollectionView!
    let connection = MarvelAPIConnection()
    let datasource = AllCharactersCollectionViewDataSource()

    func configureAllCharacters() {
        connection.allCharactersRequest(datasource: datasource, collectionView: collectionView)
    }

}
