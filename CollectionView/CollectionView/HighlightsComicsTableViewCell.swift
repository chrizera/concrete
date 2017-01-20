//
//  HighlightsComicsTableViewCell.swift
//  CollectionView
//
//  Created by Christian Perrone on 12/01/17.
//
//

import UIKit

class HighlightsComicsTableViewCell: UITableViewCell {

    @IBOutlet weak var collectionView: UICollectionView!
    let dataSource = HighlightComicsDataSource()
    let c = MarvelAPIConnection()
    
    func configureComics() {
        c.comicsRequest(datasource: dataSource, collectionView: collectionView)
    }
}
