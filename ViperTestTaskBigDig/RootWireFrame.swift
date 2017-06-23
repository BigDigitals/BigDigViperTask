//
//  RootWireFrame.swift
//  ViperTestTaskBigDig
//
//  Created by Evgeniy Tkachenko on 23.06.17.
//  Copyright © 2017 Big Dig. All rights reserved.
//

import UIKit

class RootWireFrame: NSObject {
    
    let signInWireFrame = SignInWireFrame()
    let picturesListWireFrame = PicturesListWireFrame()
    
    override init() {
        let signInPresenter = SignInPresenter()
        let signInInteractor = SignInInteractor()
        
        signInPresenter.signInWireFrame = signInWireFrame
        signInPresenter.signInInteractionInputProtocol = signInInteractor
        signInInteractor.signInInteractorOutputProtocol = signInPresenter
        signInWireFrame.signInPresenter = signInPresenter
        
        let picturesListPresenter = PicturesListPresenter()
        let picturesListInteractor = PicturesListInteractor()
        
        picturesListPresenter.picturesListWireFrame = picturesListWireFrame
        picturesListPresenter.picturesListInteractionInputProtocol = picturesListInteractor
        picturesListInteractor.picturesListInteractorOutputProtocol = picturesListPresenter
        picturesListWireFrame.picturesListPresenter = picturesListPresenter
    }
    
    func application() -> Bool {
        checkIfAnyUserPersistedOrNot()
        return true
    }
    
    func checkIfAnyUserPersistedOrNot() {
        let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
        do {
            let usersCount = try context.count(for: User.fetchRequest())
            if usersCount > 0 {
                // PicturesList Screen
                picturesListWireFrame.presentPicturesListViewController()
            } else {
                // SignIn Screen
                signInWireFrame.presentSignInViewController()
            }
            
        } catch {
            print("Fetching Failed")
            signInWireFrame.presentSignInViewController()
        }
    }
    
}
