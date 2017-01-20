//
//  CharactersTableViewDataSource.swift
//  CollectionView
//
//  Created by Christian Perrone on 13/01/17.
//
//

import UIKit

class CharactersTableViewDataSource: NSObject, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "AllCharacters") as! AllCharactersTableViewCell
            
            cell.configureAllCharacters()
            
            return cell
        }
        else {
            let cell = tableView.dequeueReusableCell(withIdentifier: "TopCharacters") as! TopCharactersTableViewCell
            
            cell.configureTopCharacters()
            
            return cell
        }
    }
}
