//
//  SecondViewController.swift
//  TintTint
//
//  Created by RD1-Billy on 2024/3/2.
//

import UIKit

class PhotosViewController: UIViewController {

    private lazy var collectionView: UICollectionView = {
        
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
}

extension PhotosViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        <#code#>
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        <#code#>
    }
}
