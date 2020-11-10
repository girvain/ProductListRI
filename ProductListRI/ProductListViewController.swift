//
//  ProductListViewController.swift
//  ProductListRI
//
//  Created by Gavin Ross on 09/11/2020.
//  Copyright © 2020 Gavin Ross. All rights reserved.
//

import UIKit

class ProductListViewController: UICollectionViewController{

    fileprivate let cellId = "cellId"

    override func viewDidLoad() {
        super.viewDidLoad()

        collectionView.backgroundColor = .yellow
        

        collectionView.register(UICollectionViewCell.self, forCellWithReuseIdentifier: cellId)
        collectionView.delegate = self
    }

    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 16
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellId, for: indexPath)
        cell.backgroundColor = .black
        return cell
    }
    
}
