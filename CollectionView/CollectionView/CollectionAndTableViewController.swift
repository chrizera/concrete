//
//  CollectionAndTableViewController.swift
//  CollectionView
//
//  Created by Christian Perrone on 29/12/16.
//
//

import UIKit
import CryptoSwift

class CollectionAndTableViewController: UIViewController,  UITableViewDelegate, UITableViewDataSource, UICollectionViewDataSource, UICollectionViewDelegate {
    
    let publicKey = "661233065637c5a8007a2625c16e70f3"
    let privateKey = "f1b7bc0f81dcd64581c13827df39c1006243621c"
    let timeStamp = Date.timeIntervalSinceReferenceDate.description

    override func viewDidLoad() {
        super.viewDidLoad()
        
//        let hashCode = (timeStamp + privateKey + publicKey).md5()
        
        print("TESTE")
//        print(timeStamp)
        
//        guard let url = URL(string: "https://gateway.marvel.com:443/v1/public/characters/1011334?ts=\(timeStamp)&apikey=\(publicKey)&hash=\(hashCode)") else { return }
//        guard let data = try? Data(contentsOf: url) else { return }
//        guard let json = try? JSONSerialization.jsonObject(with: data, options: .allowFragments) as! [String:Any] else { return }
//        
//        print(json)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 4
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if indexPath.row == 0 || indexPath.row == 2 {
        
            let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell") as! CustomTableViewCell
        
            cell.collectionView.tag = indexPath.row
//          cell.collectionView.reloadData()
        
            return cell
        }
        
        else {
            let cell = tableView.dequeueReusableCell(withIdentifier: "Table2")
            
            return cell!
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 6
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        if collectionView.tag == 0 {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CollectionViewCell", for: indexPath) as! CustomCollectionViewCell
            cell.testeLabel.text = "AAAAAAAAAA"
            return cell


        }
        else {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Collection2ViewCell", for: indexPath) as! CustomCollectionViewCell
            
            return cell

        }

    }
}
