//
//  HighLightsCharactersTableViewCell.swift
//  CollectionView
//
//  Created by Christian Perrone on 06/01/17.
//
//

import UIKit

class HighLightsCharactersTableViewCell: UITableViewCell {
    
    @IBOutlet weak var collectionView: UICollectionView!
    let dataSource = HighlightsCharactersCollectionViewDataSource()
    let c = MarvelAPIConnection()
    let delegate = CollectionViewDelegate()
    
    func configureCharacter() {
        c.charactersRequest(datasource: dataSource)
    }
}
