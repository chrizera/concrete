//
//  AllComicsCollectionViewDataSource.swift
//  CollectionView
//
//  Created by Christian Perrone on 19/01/17.
//
//

import UIKit

class AllComicsCollectionViewDataSource: NSObject, UICollectionViewDataSource {
    
    var comicsResults = [Comics]()
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return comicsResults.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "AllComics", for: indexPath) as! AllComicsCollectionViewCell
        
        let comics = comicsResults[indexPath.row]
        
        cell.comicsTitle.text = comics.title
        
        return cell
    }
}
