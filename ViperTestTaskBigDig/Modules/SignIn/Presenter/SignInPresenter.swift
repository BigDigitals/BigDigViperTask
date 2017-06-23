//
//  SignInPresenter.swift
//  ViperTestTaskBigDig
//
//  Created by Evgeniy Tkachenko on 23.06.17.
//  Copyright © 2017 Big Dig. All rights reserved.
//

import UIKit

class SignInPresenter: NSObject {
    
    var signInWireFrame: SignInWireFrame?
    var signInInteractionInputProtocol: SignInInteractorInputProtocol?
    var signInPresenterProtocol: SignInPresenterProtocol?
    
    func signIn(email: String, password: String) {
        signInInteractionInputProtocol?.signInRequest(email: email, password: password)
    }
}

// MARK: - SignInInteractorProtocol

extension SignInPresenter: SignInInteractorOutputProtocol {
    
    func signInSuccessRequest() {
        
    }
    
    func signInFailRequest(error: String) {
        signInPresenterProtocol?.showErrorMessage(error)
    }

}
