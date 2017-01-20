//
//  ComicsTableViewDataSource.swift
//  CollectionView
//
//  Created by Christian Perrone on 19/01/17.
//
//

import UIKit
class ComicsTableViewDataSource: NSObject, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "AllComicsCell") as! AllComicsTableViewCell
            cell.configueAllComics()
            return cell
        }
        else {
            let cell = tableView.dequeueReusableCell(withIdentifier: "TopComicsCell") as! TopComicsTableViewCell
            
            return cell
        }
    }
}
