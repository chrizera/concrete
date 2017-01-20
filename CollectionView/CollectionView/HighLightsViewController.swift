//
//  HighLightsViewController.swift
//  CollectionView
//
//  Created by Christian Perrone on 06/01/17.
//
//

import UIKit

class HighLightsViewController: UIViewController, UICollectionViewDelegate {
    
    @IBOutlet weak var tableView: UITableView!
    let tableViewDataSource = HighlightsCharactersTableViewDataSource()
    let datasource = HighlightsCharactersCollectionViewDataSource()
    let delegate = CollectionViewDelegate()
    let c = MarvelAPIConnection()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = tableViewDataSource
        tableView.separatorStyle = .none
        
        c.charactersRequest(datasource: datasource)
        
        
        navigationController?.navigationBar.barTintColor = UIColor.darkGray
        navigationController?.navigationBar.tintColor = UIColor.white
        navigationController?.navigationBar.titleTextAttributes = [NSForegroundColorAttributeName:UIColor.white]
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        collectionView.delegate = delegate
        self.performSegue(withIdentifier: "ShowCharactersDetail", sender: nil)
    }
    

    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ShowCharactersDetail" {
            if let destination = segue.destination as? CharactersDetailsViewController {

            }
        }
    }
}
