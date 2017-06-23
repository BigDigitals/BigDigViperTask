//
//  SignInInteractor.swift
//  ViperTestTaskBigDig
//
//  Created by Evgeniy Tkachenko on 23.06.17.
//  Copyright © 2017 Big Dig. All rights reserved.
//

import Foundation
import Alamofire
import SwiftyJSON
import CryptoSwift

class SignInInteractor: NSObject {
    
    var signInInteractorOutputProtocol: SignInInteractorOutputProtocol?
    
}

// MARK: - SignInInteractorProtocol

extension SignInInteractor: SignInInteractorInputProtocol {
    
    func signInRequest(email: String, password: String) {
        if email != "" && password != "" {
            let url = Urls.urlServer + Urls.urlSignIn
            
            let parameters = ["email": email,
                              "password": password]
            
            Alamofire.request(url, method: .post, parameters: parameters, encoding: URLEncoding.default, headers: nil).responseJSON { (response) in
                if let error = response.result.error {
                    self.signInInteractorOutputProtocol?.signInFailRequest(error: error.localizedDescription)
                } else {
                    if let data = response.data {
                        let json = JSON(data: data)
                        print(json)
                        
                        if let error = json["error"].string {
                            self.signInInteractorOutputProtocol?.signInFailRequest(error: error)
                        } else {
                            let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
                            
                            let user = User(context: context)
                            user.token = json["token"].stringValue
                            user.avatarUrl = json["avatar"].stringValue
                            
                            (UIApplication.shared.delegate as! AppDelegate).saveContext()
                            
                            self.signInInteractorOutputProtocol?.signInSuccessRequest()
                        }
                    }
                }
            }
        } else {
            self.signInInteractorOutputProtocol?.signInFailRequest(error: "Please, input email and password!")
        }
    }
    
}
