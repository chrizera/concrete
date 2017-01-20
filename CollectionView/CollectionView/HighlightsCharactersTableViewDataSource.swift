//
//  HighlightsCharactersTableViewDataSource.swift
//  CollectionView
//
//  Created by Christian Perrone on 06/01/17.
//
//

import UIKit

class HighlightsCharactersTableViewDataSource: NSObject, UITableViewDataSource {
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if indexPath.row == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "HighlightCharactersCell") as! HighLightsCharactersTableViewCell
            let dataSource = HighlightsCharactersCollectionViewDataSource()

            cell.collectionView.dataSource = dataSource
            cell.collectionView.reloadData()
//            cell.configureCharacter()
            
            return cell
        }
        else {
            let cell2 = tableView.dequeueReusableCell(withIdentifier: "HighlightComicsCell") as! HighlightsComicsTableViewCell
            cell2.configureComics()
            
            return cell2
        }
        
    }

}
