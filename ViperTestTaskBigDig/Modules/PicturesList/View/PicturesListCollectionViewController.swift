//
//  PicturesListCollectionViewController.swift
//  ViperTestTaskBigDig
//
//  Created by Evgeniy Tkachenko on 23.06.17.
//  Copyright © 2017 Big Dig. All rights reserved.
//

import UIKit

class PicturesListCollectionViewController: UICollectionViewController {
    
    var picturesListPresenter: PicturesListPresenter?

    // MARK: - Init
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

}

// MARK: - UICollectionViewDataSource

extension PicturesListCollectionViewController {
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 6
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "PictureCell", for: indexPath)
        
        
        
        return cell
    }
    
}

extension PicturesListCollectionViewController: PicturesListPresenterProtocol {
    
    func successGetPicturesList(pictures: [Picture]) {
        
    }
    
    func showErrorMessage(_ message: String) {
        
    }
    
}
 
