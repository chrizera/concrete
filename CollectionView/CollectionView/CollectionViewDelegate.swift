//
//  CollectionViewDelegate.swift
//  CollectionView
//
//  Created by Christian Perrone on 18/01/17.
//
//

import UIKit

class CollectionViewDelegate: NSObject, UICollectionViewDelegate {
    
    weak var viewController: HighLightsViewController?
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        viewController?.performSegue(withIdentifier: "ShowCharactersDetail", sender: nil)
    }
}
