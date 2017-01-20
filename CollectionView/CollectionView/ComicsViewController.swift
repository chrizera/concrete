//
//  ComicsViewController.swift
//  CollectionView
//
//  Created by Christian Perrone on 06/01/17.
//
//

import UIKit

class ComicsViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    let datasource = ComicsTableViewDataSource()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = datasource
        
        navigationController?.navigationBar.barTintColor = UIColor.darkGray
        navigationController?.navigationBar.tintColor = UIColor.white
        navigationController?.navigationBar.titleTextAttributes = [NSForegroundColorAttributeName:UIColor.white]
    }

}
