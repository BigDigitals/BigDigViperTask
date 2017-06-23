//
//  SignInWireFrame.swift
//  ViperTestTaskBigDig
//
//  Created by Evgeniy Tkachenko on 23.06.17.
//  Copyright © 2017 Big Dig. All rights reserved.
//

import UIKit

class SignInWireFrame: NSObject, SignInWireFrameProtocol {
    
    var rootWireFrame: RootWireFrame?
    var signInPresenter: SignInPresenter?
    var signInViewController: SignInViewController?

    func presentSignInViewController() {
        signInViewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "SignInViewController") as? SignInViewController
        
        signInViewController?.signInPresenter = signInPresenter
        signInPresenter?.signInPresenterProtocol = signInViewController
        
        (UIApplication.shared.delegate as! AppDelegate).window?.rootViewController = signInViewController
        (UIApplication.shared.delegate as! AppDelegate).window?.makeKeyAndVisible()
    }
    
    func presentPicturesListViewController() {
        let picturesListViewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "PicturesListViewController")
        (UIApplication.shared.delegate as! AppDelegate).window?.rootViewController = picturesListViewController
    }
    
    func presentSignUpViewController() {
        let signUpViewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "SignUpViewController")
        (UIApplication.shared.delegate as! AppDelegate).window?.rootViewController = signUpViewController
    }
    
}
