//
//  MarvelAPIConnection.swift
//  CollectionView
//
//  Created by Christian Perrone on 10/01/17.
//
//

import Foundation
import Alamofire
import CryptoSwift
import ObjectMapper

class MarvelAPIConnection {
    
    let publicKey = "661233065637c5a8007a2625c16e70f3"
    let privateKey = "f1b7bc0f81dcd64581c13827df39c1006243621c"
    let timeStamp = Date.timeIntervalSinceReferenceDate.description
    
    func getHash() -> String {
        return (timeStamp + privateKey + publicKey).md5()
    }
    
    func charactersRequest(datasource: HighlightsCharactersCollectionViewDataSource) {
        let hashCode = getHash()
        let string = "https://gateway.marvel.com:443/v1/public/characters?ts=\(timeStamp)&apikey=\(publicKey)&hash=\(hashCode)"
        
        Alamofire.request(string).responseJSON { (response) in
            let charactersResult = Mapper<CharacterData>().map(JSON: response.result.value as! [String : Any])
            guard let results = charactersResult?.data?.results else { return }
            
            datasource.charactersResult.append(contentsOf: results)
        }
        
    }
    
    func comicsRequest(datasource: HighlightComicsDataSource, collectionView: UICollectionView) {
        let hashCode = getHash()
        let string = "https://gateway.marvel.com:443/v1/public/comics?ts=\(timeStamp)&apikey=\(publicKey)&hash=\(hashCode)"
        
        collectionView.dataSource = datasource
        
        Alamofire.request(string).responseJSON { (response) in
            let comicsResults = Mapper<ComicsData>().map(JSON: response.result.value as! [String:Any])
            guard let results = comicsResults?.data?.results else { return }
            
            datasource.comicsResults.append(contentsOf: results)
            collectionView.reloadData()
        }
    }
    
    func allCharactersRequest(datasource: AllCharactersCollectionViewDataSource, collectionView: UICollectionView) {
        let hashCode = getHash()
        let string = "https://gateway.marvel.com:443/v1/public/characters?limit=10&ts=\(timeStamp)&apikey=\(publicKey)&hash=\(hashCode)"
        
        collectionView.dataSource = datasource
        
        Alamofire.request(string).responseJSON { (response) in
            let charactersResult = Mapper<CharacterData>().map(JSON: response.result.value as! [String : Any])
            guard let results = charactersResult?.data?.results else { return }
            
            datasource.allCharactersResults.append(contentsOf: results)
            collectionView.reloadData()
        }
    }
    
    func topCharactersRequest(datasource: TopCharactersCollectionViewDataSource, collectionView: UICollectionView) {
        let hashCode = getHash()
        let string = "https://gateway.marvel.com:443/v1/public/characters?limit=10&offset=250&ts=\(timeStamp)&apikey=\(publicKey)&hash=\(hashCode)"
        
        collectionView.dataSource = datasource
        
        Alamofire.request(string).responseJSON { (response) in
            let charactersResult = Mapper<CharacterData>().map(JSON: response.result.value as! [String : Any])
            guard let results = charactersResult?.data?.results else { return }
            
            datasource.topCharactersResults.append(contentsOf: results)
            collectionView.reloadData()
        }
    }
    
    func allComicsRequest(datasource: AllComicsCollectionViewDataSource, collectionView: UICollectionView) {
        let hashCode = getHash()
        let string = "https://gateway.marvel.com:443/v1/public/comics?ts=\(timeStamp)&apikey=\(publicKey)&hash=\(hashCode)"
        
        collectionView.dataSource = datasource
        
        Alamofire.request(string).responseJSON { (response) in
            let comicsResults = Mapper<ComicsData>().map(JSON: response.result.value as! [String:Any])
            guard let results = comicsResults?.data?.results else { return }
            
            datasource.comicsResults.append(contentsOf: results)
            collectionView.reloadData()
        }
    }
}
