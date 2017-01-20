//
//  AllCharactersCollectionViewDataSource.swift
//  CollectionView
//
//  Created by Christian Perrone on 17/01/17.
//
//

import UIKit
import Kingfisher

class AllCharactersCollectionViewDataSource: NSObject, UICollectionViewDataSource {
    
    var allCharactersResults = [Character]()
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return allCharactersResults.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "AllCharacter", for: indexPath) as! AllCharactersCollectionViewCell
        
        let character = allCharactersResults[indexPath.row]
        
        cell.characterName.text = character.name
        cell.characterImage.kf.indicatorType = .activity
        if let path = character.thumbnail?.path, let imageExtension = character.thumbnail?.imageExtension {
            let string = "\(path).\(imageExtension)"
            
            if let url = URL(string: string) {
                cell.characterImage.kf.indicatorType = .activity
                cell.characterImage.kf.setImage(with: url)
            }
        }
        return cell
    }
}
