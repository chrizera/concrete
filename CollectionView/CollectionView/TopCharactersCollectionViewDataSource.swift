//
//  TopCharactersCollectionViewDataSource.swift
//  CollectionView
//
//  Created by Christian Perrone on 18/01/17.
//
//

import UIKit

class TopCharactersCollectionViewDataSource: NSObject, UICollectionViewDataSource {
    
    var topCharactersResults = [Character]()
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return topCharactersResults.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "TopCharacter", for: indexPath) as! TopCharactersCollectionViewCell
        
        let character = topCharactersResults[indexPath.row]
        
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
