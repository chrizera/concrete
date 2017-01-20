//
//  HighlightsCharactersCollectionViewDataSource.swift
//  CollectionView
//
//  Created by Christian Perrone on 10/01/17.
//
//

import UIKit
import Kingfisher

class HighlightsCharactersCollectionViewDataSource: NSObject, UICollectionViewDataSource{
    
    var charactersResult = [Character]()
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "HighlightCharacters", for: indexPath) as? HighLightsCharactersCollectionViewCell {
            
            let character = charactersResult[indexPath.row]
            
            cell.characterName.text = character.name
            
            if let path = character.thumbnail?.path, let imageExtension = character.thumbnail?.imageExtension {
                let string = "\(path).\(imageExtension)"
                
                if let url = URL(string: string) {
                    cell.characterImage.kf.indicatorType = .activity
                    cell.characterImage.kf.setImage(with: url)
                }
            }
            return cell
        }
        else {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "HighlightCharacters", for: indexPath)
        
            return cell
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return charactersResult.count
    }
}
