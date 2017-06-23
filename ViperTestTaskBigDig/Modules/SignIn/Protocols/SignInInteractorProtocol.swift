//
//  SignInInteractorProtocol.swift
//  ViperTestTaskBigDig
//
//  Created by Evgeniy Tkachenko on 23.06.17.
//  Copyright © 2017 Big Dig. All rights reserved.
//

import Foundation

protocol SignInInteractorInputProtocol {
    
    func signInRequest(email: String, password: String)
    
}

protocol SignInInteractorOutputProtocol {
    
    func signInSuccessRequest()
    func signInFailRequest(error: String)
    
}
