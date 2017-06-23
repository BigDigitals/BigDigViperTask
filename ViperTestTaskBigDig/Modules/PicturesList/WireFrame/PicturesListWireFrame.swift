//
//  PicturesListWireFrame.swift
//  ViperTestTaskBigDig
//
//  Created by Evgeniy Tkachenko on 23.06.17.
//  Copyright © 2017 Big Dig. All rights reserved.
//

import UIKit

class PicturesListWireFrame: NSObject, PicturesListWireFrameProtocol {
    
    var rootWireFrame: RootWireFrame?
    var picturesListPresenter: PicturesListPresenter?
    var picturesListCollectionViewController: PicturesListCollectionViewController?
    
    func presentPicturesListViewController() {
        picturesListCollectionViewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "PicturesListCollectionViewController") as? PicturesListCollectionViewController
        let navigationController = UINavigationController(rootViewController: picturesListCollectionViewController!)
        
        picturesListCollectionViewController?.picturesListPresenter = picturesListPresenter
        picturesListPresenter?.picturesListPresenterProtocol = picturesListCollectionViewController
        
        (UIApplication.shared.delegate as! AppDelegate).window?.rootViewController = navigationController
        (UIApplication.shared.delegate as! AppDelegate).window?.makeKeyAndVisible()
    }
    
    func presentAddPictureViewController() {
        let picturesListViewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "AddPictureViewController")
        (UIApplication.shared.delegate as! AppDelegate).window?.rootViewController = picturesListViewController
    }
    
}
