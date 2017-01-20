//
//  HighlightComicsDataSource.swift
//  CollectionView
//
//  Created by Christian Perrone on 12/01/17.
//
//

import UIKit
import Kingfisher

class HighlightComicsDataSource: NSObject, UICollectionViewDataSource {
    
    var comicsResults = [Comics]()
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return comicsResults.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "HighlightComics", for: indexPath) as? HighlightsComicsCollectionViewCell {
            let comics = comicsResults[indexPath.row]
            
            cell.comicsTitle.text = comics.title
            
            if let path = comics.thumbnail?.path, let imgExtension = comics.thumbnail?.imageExtension {
                let string = "\(path).\(imgExtension)"
                
                if let url = URL(string: string) {
                    cell.comicsImage.kf.indicatorType = .activity
                    cell.comicsImage.kf.setImage(with: url)
                }
            }
            
            return cell
        }
        else {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "", for: indexPath)
            
            return cell
        }
    }
}
